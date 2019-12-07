#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/gta3xlwifi

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(LOCAL_PATH)/configs/public.libraries.txt.backup:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt.backup


# Check for availability of kernel source
ifneq ($(wildcard $(TARGET_KERNEL_SOURCE)/Makefile),)
  # Give precedence to TARGET_PREBUILT_KERNEL
  ifeq ($(TARGET_PREBUILT_KERNEL),)
    TARGET_KERNEL_BUILT_FROM_SOURCE := true
  endif
endif
ifneq ($(TARGET_KERNEL_BUILT_FROM_SOURCE), true)

# Use prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
endif #TARGET_KERNEL_BUILT_FROM_SOURCE
