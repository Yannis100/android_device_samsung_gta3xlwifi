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

SELINUX_IGNORE_NEVERALLOWS := true

# Include board config fragments
include device/samsung/gta3xlwifi/board/*.mk

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01


TARGET_PREFER_32_BIT := true 

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# ADB Legacy Interface
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Device Tree
BOARD_USES_DT := true

BOARD_ROOT_EXTRA_FOLDERS := efs

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

# HWCServices
BOARD_USES_HWC_SERVICES := false

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy


# Inherit from the proprietary version
-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk

