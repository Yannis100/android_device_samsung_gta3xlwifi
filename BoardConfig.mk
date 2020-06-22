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

# Include board config fragments
include device/samsung/gta3xlwifi/board/*.mk

BUILD_BROKEN_DUP_RULES := true
SELINUX_IGNORE_NEVERALLOWS := true

## Android 10 ######
WITHOUT_CHECK_API := true
TEMPORARY_DISABLE_PATH_RESTRICTIONS := true

# Security patch level
#VENDOR_SECURITY_PATCH := 2020-03-01
#PRODUCT_SHIPPING_API_LEVEL := 28

# Treble
#PRODUCT_FULL_TREBLE_OVERRIDE := true

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml

# Properties
-include $(LOCAL_PATH)/system.prop

# ADB Legacy Interface
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Device Tree
BOARD_USES_DT := true

BOARD_ROOT_EXTRA_FOLDERS := efs

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

# SELinux
#BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy


# Inherit from the proprietary version
-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk

