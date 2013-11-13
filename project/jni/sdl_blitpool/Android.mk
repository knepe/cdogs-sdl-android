LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sdl_blitpool

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/../sdl-$(SDL_VERSION)/include $(LOCAL_PATH)/include
LOCAL_CFLAGS := -O3

LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES := SDL_blitpool.c

LOCAL_SHARED_LIBRARIES := sdl-$(SDL_VERSION)
LOCAL_STATIC_LIBRARIES :=
LOCAL_LDLIBS :=

include $(BUILD_SHARED_LIBRARY)

