LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_ARM_MODE := arm
zlib_files := \
	src/adler32.c \
	src/compress.c \
	src/crc32.c \
	src/deflate.c \
	src/gzclose.c \
	src/gzlib.c \
	src/gzread.c \
	src/gzwrite.c \
	src/infback.c \
	src/inflate.c \
	src/inftrees.c \
	src/inffast.c \
	src/trees.c \
	src/uncompr.c \
	src/zutil.c

LOCAL_ARM_MODE := arm
LOCAL_MODULE := libz
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DUSE_MMAP
LOCAL_CFLAGS_arm64 += -mcpu=generic+crc
LOCAL_SRC_FILES := $(zlib_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_STATIC_LIBRARY)