LOCAL_PATH:= $(call my-dir)
libext4_utils_src_files := \
    make_ext4fs.c \
    ext4fixup.c \
    ext4_utils.c \
    allocate.c \
    contents.c \
    extent.c \
    indirect.c \
    uuid.c \
    sha1.c \
    wipe.c \
    crc16.c \
    ext4_sb.c

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(libext4_utils_src_files)
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_MODULE := libext4_utils_static
LOCAL_STATIC_LIBRARIES += \
    libsparse_static
include $(BUILD_STATIC_LIBRARY)
