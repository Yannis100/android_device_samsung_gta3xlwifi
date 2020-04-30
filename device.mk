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
#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gta3xlwifi/gta3xlwifi-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

LOCAL_PATH := device/samsung/gta3xlwifi

# Inherit board specific products
-include $(LOCAL_PATH)/product/*.mk


DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_CHARACTERISTICS := tablet

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1200
TARGET_SCREEN_HEIGHT := 1920
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/ramdisk/etc/fstab.exynos7885:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos7885 \
#    $(LOCAL_PATH)/ramdisk/etc/fstab.exynos7885:$(TARGET_COPY_OUT_VENDOR)/fstab.exynos7885


#PRODUCT_PACKAGES += \
#	dtbhtoolExynos


# cpboot-daemon
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/cbd:$(TARGET_COPY_OUT_VENDOR)/bin/cbd


# System properties
-include $(LOCAL_PATH)/system_prop.mk
