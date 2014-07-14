# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_C
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_abort.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_abort.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_cmd.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_cmd.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_blockpool.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_generic_blockpool.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_event_flags.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_generic_event_flags.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_named_sem.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_generic_named_sem.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_reentrant_mtx.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_generic_reentrant_mtx.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_safe_string.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_generic_safe_string.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_init.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_init.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_logcat.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_logcat.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_mem_from_malloc.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_mem_from_malloc.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_msgqueue.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/generic/vcos_msgqueue.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/glibc/vcos_backtrace.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/__/glibc/vcos_backtrace.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/pthreads/vcos_dlfcn.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_dlfcn.c.o"
  "/android/build/android-cm-armv6/userland/interface/vcos/pthreads/vcos_pthreads.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_pthreads.c.o"
  )
SET(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
SET(CMAKE_TARGET_DEFINITIONS
  "EGL_SERVER_DISPMANX"
  "HAVE_CMAKE_CONFIG"
  "HAVE_VMCS_CONFIG"
  "OMX_SKIP64BIT"
  "TV_SUPPORTED_MODE_NO_DEPRECATED"
  "USE_VCHIQ_ARM"
  "VCHI_BULK_ALIGN=1"
  "VCHI_BULK_GRANULARITY=1"
  "_FILE_OFFSET_BITS=64"
  "_GNU_SOURCE"
  "_HAVE_SBRK"
  "_LARGEFILE64_SOURCE"
  "_LARGEFILE_SOURCE"
  "_REENTRANT"
  "__VIDEOCORE4__"
  )

# Targets to which this target links.
SET(CMAKE_TARGET_LINKED_INFO_FILES
  )

# The include file search paths:
SET(CMAKE_C_TARGET_INCLUDE_PATH
  "/android/build/android-cm-armv6/prebuilts/ndk/current/platforms/android-18/arch-arm/usr/include"
  "../../../BEFORE"
  "/android/build/android-cm-armv6/bionic/libc/include"
  "/android/build/android-cm-armv6/bionic/libc/include/arch-arm/include"
  "/android/build/android-cm-armv6/bionic/libc/kernel/arch-arm"
  "/android/build/android-cm-armv6/bionic/libc/kernel/common"
  "/android/build/android-cm-armv6/bionic/libm/include"
  "/android/build/android-cm-armv6/bionic/libm/include/arch/arm"
  "/android/build/android-cm-armv6/bionic/libstdc++/include"
  "../../inc"
  "../../../host_applications/framework"
  "../../.."
  "../../../interface/vcos/pthreads"
  "../../../interface/vmcs_host/linux"
  "../../../interface/vmcs_host"
  "../../../interface/vmcs_host/khronos"
  "../../../interface/khronos/include"
  "."
  "../../../interface/vchiq_arm"
  "../../../host_support/include"
  "../../inc/interface/vcos"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
