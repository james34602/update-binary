LOCAL_PATH := $(call my-dir)
update-binary_src_files := \
	install.c \
	update-binary.c

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(update-binary_src_files)
LOCAL_STATIC_LIBRARIES += libedify libmincrypt libmtdutils libminzip libsafe_iop libext4_utils_static
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_LDFLAGS += -Wl,--gc-sections,--exclude-libs,ALL -static
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_MODULE := update-binary
include $(BUILD_EXECUTABLE)