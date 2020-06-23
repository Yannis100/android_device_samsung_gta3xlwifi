#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#



LOCAL_PATH := device/samsung/gta3xlwifi

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk


# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# ADB
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=adb \
    ro.adb.secure=0 \
    ro.secure=0

PRODUCT_PROPERTY_OVERRIDES := \
    ro.carrier=wifi-only
    
ifneq ($(INCLUDE_EXYNOS_BSP),)
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi/exynos7885/exynos7870.mk)
endif
    
#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)
