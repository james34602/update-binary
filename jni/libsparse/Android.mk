LOCAL_PATH := $(call my-dir)
libsparse_src_files := \
        backed_block.c \
        output_file.c \
        sparse.c \
        sparse_crc32.c \
        sparse_err.c \
        sparse_read.c

include $(CLEAR_VARS)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := $(libsparse_src_files)
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_MODULE := libsparse_static
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include external/zlib
LOCAL_STATIC_LIBRARIES := libz
include $(BUILD_STATIC_LIBRARY)