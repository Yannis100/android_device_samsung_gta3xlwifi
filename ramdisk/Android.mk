LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.exynos7885
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := fstab.exynos7885
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.samsungexynos7885.rc
LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.samsungexynos7885.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)
