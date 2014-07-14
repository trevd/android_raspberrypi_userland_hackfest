# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_C
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_buffer.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_buffer.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_clock.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_clock.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_component.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_component.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_events.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_events.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_format.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_format.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_logging.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_logging.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_pool.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_pool.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_port.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_port.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_port_clock.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_port_clock.c.o"
  "/android/build/android-cm-armv6/userland/interface/mmal/core/mmal_queue.c" "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/mmal/core/CMakeFiles/mmal_core.dir/mmal_queue.c.o"
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
  "/android/build/android-cm-armv6/userland/build/arm-linux/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/DependInfo.cmake"
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
  "../../../interface/mmal"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})