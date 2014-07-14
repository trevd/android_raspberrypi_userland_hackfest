# Install script for directory: /android/build/android-cm-armv6/userland/interface/vcos/generic

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/vendor/brcm/islands")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/interface/vcos/generic" TYPE FILE FILES
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_common.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_blockpool.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_event_flags.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_named_sem.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_quickslow_mutex.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_reentrant_mtx.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_generic_tls.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_joinable_thread_from_plain.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_latch_from_sem.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_mem_from_malloc.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_mutexes_are_reentrant.h"
    "/android/build/android-cm-armv6/userland/interface/vcos/generic/vcos_thread_reaper.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

