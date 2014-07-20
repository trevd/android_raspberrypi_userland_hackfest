ifeq ($(TARGET_BCM2708_COMPILE_RAZDROID_LIBS),true)
#
# Copyright (C) 2013 Andreas Harter - RazDroid roject
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
include $(ANDROID_BUILD_TOP)/hardware/broadcom/$(TARGET_BOARD_PLATFORM)/cflags.mk

LOCAL_C_INCLUDES += hardware/broadcom/$(TARGET_BOARD_PLATFORM)/include

#LOCAL_C_INCLUDES += $(USERLAND_INCLUDES) \

LOCAL_MODULE := libgralloc_brcm
LOCAL_SRC_FILES := gralloc_brcm.cpp
LOCAL_SHARED_LIBRARIES := liblog libui
LOCAL_STATIC_LIBRARIES := libvchost libbcm_host
LOCAL_CFLAGS += -DLOG_TAG=\"$(TARGET_BOARD_PLATFORM).brcm\"
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
include $(BUILD_SHARED_LIBRARY)
endif
