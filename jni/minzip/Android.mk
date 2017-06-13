LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	Hash.c \
	SysUtil.c \
	DirUtil.c \
	Inlines.c \
	Zip.c

LOCAL_C_INCLUDES := \
	external/zlib 
LOCAL_MODULE := libminzip
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_STATIC_LIBRARIES += libz
include $(BUILD_STATIC_LIBRARY)