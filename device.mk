#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

VENDOR_PATH := device/samsung/gta3xlwifi

# Include package config fragments
-include $(VENDOR_PATH)/product/*.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(VENDOR_PATH)/overlay

# Public Libraries
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt \
    $(VENDOR_PATH)/configs/public.libraries.txt.backup:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt.backup
