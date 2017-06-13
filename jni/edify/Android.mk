LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
edify_src_files := \
	lexer.cpp \
	parser.cpp \
	expr.c
LOCAL_SRC_FILES := $(edify_src_files)
LOCAL_CPPFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
LOCAL_MODULE := libedify
include $(BUILD_STATIC_LIBRARY)
