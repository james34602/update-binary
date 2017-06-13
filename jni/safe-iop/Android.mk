LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_SRC_FILES := src/safe_iop.c
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_MODULE := libsafe_iop
include $(BUILD_STATIC_LIBRARY)