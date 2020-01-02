$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/gta3xlwifi

PRODUCT_HARDWARE := gta3xlwifi
PRODUCT_SHIPPING_API_LEVEL := 28

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
    
# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

# Inherit vendor
$(call inherit-product, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)
