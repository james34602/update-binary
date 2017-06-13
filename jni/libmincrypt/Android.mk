LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := libmincrypt
LOCAL_SRC_FILES := dsa_sig.c p256.c p256_ec.c p256_ecdsa.c rsa.c sha.c sha256.c
LOCAL_CFLAGS += -ffunction-sections -fdata-sections -Ofast -ftree-vectorize -DNDEBUG
include $(BUILD_STATIC_LIBRARY)