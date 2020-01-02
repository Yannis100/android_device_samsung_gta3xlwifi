PRODUCT_HARDWARE := gta3xlwifi
PRODUCT_SHIPPING_API_LEVEL := 28

VENDOR_PATH := device/samsung/gta3xlwifi

#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)

# Include package config fragments
include $(VENDOR_PATH)/product/*.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(VENDOR_PATH)/overlay

# Flat device tree for boot image
#PRODUCT_HOST_PACKAGES += \
#    dtbhtoolExynos
