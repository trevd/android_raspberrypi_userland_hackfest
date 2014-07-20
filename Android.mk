include $(CLEAR_VARS)

LOCAL_PREBUILT_LIBS := build/lib/libkhrn_static.a
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_LDFLAGS := -Wl,--no-warn-shared-textrel
LOCAL_MODULE := libGLES_bcm2708
LOCAL_SHARED_LIBRARIES := liblog libdl 
LOCAL_WHOLE_STATIC_LIBRARIES := libkhrn_static
LOCAL_MODULE_TAGS:= optional
LOCAL_MODULE_PATH:= $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/egl
include $(BUILD_SHARED_LIBRARY)
