# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_ASM
  "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/interface/khronos/common/khrn_int_hash_asm.s" "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/build/arm-linux/release/interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash_asm.s.o"
  )
SET(CMAKE_ASM_COMPILER_ID "GNU")
SET(CMAKE_DEPENDS_CHECK_C
  "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/interface/khronos/common/khrn_client_cache.c" "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/build/arm-linux/release/interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_cache.c.o"
  "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/interface/khronos/common/khrn_client_pointermap.c" "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/build/arm-linux/release/interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_pointermap.c.o"
  "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/interface/khronos/common/khrn_client_vector.c" "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/build/arm-linux/release/interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_client_vector.c.o"
  "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/interface/khronos/common/khrn_int_hash.c" "/android/build/android-cm-armv6/vendor/rpi/rpi/userland/build/arm-linux/release/interface/khronos/CMakeFiles/khrn_client.dir/common/khrn_int_hash.c.o"
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
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
