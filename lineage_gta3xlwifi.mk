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

# Inherit device configuration
$(call inherit-product, device/samsung/gta3xlwifi/device.mk)

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from the 64 bit configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common  Evolution X stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOT_ANIMATION_RES_EVO := true
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/aosp/config/common_full_tablet_wifionly.mk)



## Device identifier. This must come after all inclusions
PRODUCT_NAME :=lineage_gta3xlwifi
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T510
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1 \
	telephony.lteOnCdmaDevice=0


# ADB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.logd.filter=disable\
    ro.debuggable=1 \
    persist.service.adb.enable=1


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gta3xlwifi" \
    PRODUCT_NAME="gta3xlwifi" \
    PRIVATE_BUILD_DESC="gta3xlwifixx-user 9 PPR1.180610.011 T510XXU2ASJD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:9/PPR1.180610.011/T510XXU2ASJD:user/release-keys

TARGET_VENDOR := Samsung

# Gapps
TARGET_GAPPS_ARCH := arm
