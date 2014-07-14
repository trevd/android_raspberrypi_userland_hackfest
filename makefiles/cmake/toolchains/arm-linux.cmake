# setup environment for cross compile to arm-linux



# pull in headers for android



if(ANDROID)
    #
    # work out where android headers and library are
    #

    
    message(INFO "ANDROID")
    set(ANDROID_ROOT "/android/build/android-cm-armv6" )
    if("${ANDROID_ROOT}" STREQUAL "")
        message(FATAL_ERROR "Cannot find Android root directory")
    endif()
    
    set(ANDROID_NDK_ROOT "${ANDROID_ROOT}/prebuilts/ndk/current" )
    if("${ANDROID_NDK_ROOT}" STREQUAL "")
        message(FATAL_ERROR "Cannot find Android ndk root directory")
    endif()
    set(ANDROID_TOOLCHAIN_ROOT "${ANDROID_ROOT}/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7" )
    if("${ANDROID_TOOLCHAIN_ROOT}" STREQUAL "")
        message(FATAL_ERROR "Cannot find Android toolchain root directory")
    endif()
    set(ANDROID_LIBS "/REPO/android-out/android-cm-armv6/target/product/rpi/obj/lib" )
    set(ANDROID_BIONIC "${ANDROID_ROOT}/bionic" )
    set(ANDROID_LDSCRIPTS "${ANDROID_TOOLCHAIN_ROOT}/arm-linux-androideabi/lib/ldscripts" )
    set(ANDROID_COMPILER "${ANDROID_TOOLCHAIN_ROOT}/bin/arm-linux-androideabi-gcc" )

SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_C_COMPILER /android/build/android-cm-armv6/userland/gcc-wrap)
SET(CMAKE_CXX_COMPILER  /android/build/android-cm-armv6/userland/gxx-wrap)
SET(CMAKE_ASM_COMPILER /android/build/android-cm-armv6/userland/gcc-wrap)
SET(CMAKE_SYSTEM_PROCESSOR arm)
#ADD_DEFINITIONS("-march=armv6")
add_definitions("-include ${ANDROID_ROOT}/build/core/combo/include/arch/linux-arm/AndroidConfig.h -mtune=arm1176jzf-s -msoft-float -marm -D__ARM_ARCH_6__ -D__ARM_ARCH_6J__ -mcpu=arm1176jzf-s -mfpu=vfp -msoft-float -mfloat-abi=softfp -D__ARM_ARCH_5__ -D__ARM_ARCH_5T__ -D__ARM_ARCH_5E__ -D__ARM_ARCH_5TE__")

# rdynamic means the backtrace should work
IF (CMAKE_BUILD_TYPE MATCHES "Debug")
   add_definitions(-rdynamic)
ENDIF()

# avoids annoying and pointless warnings from gcc
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wno-error=format -U_FORTIFY_SOURCE")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -c")

    if("${ANDROID_ROOT}" STREQUAL "")
        message(FATAL_ERROR "Cannot find Android BIONIC directory")
    endif()
    if("${ANDROID_LDSCRIPTS}" STREQUAL "")
        message(FATAL_ERROR "Cannot find Android LD scripts directory")
    endif()
    
    set(CMAKE_SYSTEM_PREFIX_PATH "${ANDROID_NDK_ROOT}/platforms/android-18/arch-arm/usr")
    
    #
    # add include directories for pthreads
    #
    
    
    include_directories("${CMAKE_SYSTEM_PREFIX_PATH}/include" BEFORE SYSTEM)
    include_directories("${CMAKE_SYSTEM_PREFIX_PATH}/include" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libc/include" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libc/include/arch-arm/include" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libc/kernel/arch-arm" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libc/kernel/common" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libm/include" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libm/include/arch/arm" BEFORE SYSTEM)
    include_directories("${ANDROID_BIONIC}/libstdc++/include" BEFORE SYSTEM)
    

    #
    # Pull in Android link options manually
    #
    
    set(ANDROID_CRTBEGIN "/REPO/android-out/android-cm-armv6/target/product/rpi/obj/lib/crtbegin_dynamic.o")
    set(ANDROID_CRTEND "/REPO/android-out/android-cm-armv6/target/product/rpi/obj/lib/crtend_android.o")
    set(CMAKE_SHARED_LINKER_FLAGS "-nostdlib ${ANDROID_CRTBEGIN} -Wl,-Bdynamic")

    link_directories(${ANDROID_LIBS})
    set(CMAKE_EXE_LINKER_FLAGS "-Wno-error -nostdlib ${ANDROID_CRTBEGIN}  -Wl,-z,noexecstack -nodefaultlibs") 
    set(CMAKE_EXE_LINKER_FLAGS "-Wno-error  ${CMAKE_EXE_LINKER_FLAGS}  -Wl,-dynamic-linker,/system/bin/linker")
    set(CMAKE_EXE_LINKER_FLAGS "-Wno-error ${CMAKE_EXE_LINKER_FLAGS}  -Wl,-z,nocopyreloc -Wl,-z,noexecstack -Wl,--fix-cortex-a8 -Wl,--no-undefined")

    set(CMAKE_C_STANDARD_LIBRARIES "-static-libgcc -lc -lm -ldl -lstdc++ -lstlport -llog ${ANDROID_CRTEND}" CACHE INTERNAL "" FORCE)
    
    set(SHARED "SHARED")
else()
    set(SHARED "SHARED")
endif()


# All linux systems have sbrk()
add_definitions(-D_HAVE_SBRK)

# pull in declarations of lseek64 and friends
add_definitions(-D_LARGEFILE64_SOURCE)
	

# test for existence of execinfo.h header
include(CheckIncludeFile)


add_definitions(-DHAVE_CMAKE_CONFIG)
configure_file (
    "/android/build/android-cm-armv6/userland/makefiles/cmake/cmake_config.h.in"
    "${PROJECT_BINARY_DIR}/cmake_config.h"
    )
 
