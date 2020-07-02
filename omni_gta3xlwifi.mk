#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)
#$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/gta3xlwifi/device.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_NAME := omni_gta3xlwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T510
PRODUCT_MANUFACTURER := samsung


PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="gta3xlwifi" \
    PRODUCT_NAME="gta3xlwifi" \
    PRIVATE_BUILD_DESC="gta3xlwifixx-user 9 PPR1.180610.011 T510XXU2ASJD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:9/PPR1.180610.011/T510XXU2ASJD:user/release-keys
