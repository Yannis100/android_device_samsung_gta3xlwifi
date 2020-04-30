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
#SELINUX_IGNORE_NEVERALLOWS := true


# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# ADB Legacy Interface
TARGET_USES_LEGACY_ADB_INTERFACE := true


# Samsung HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung
#TARGET_SEC_FP_HAL_VARIANT := bauth

BOARD_USES_HWC_SERVICES := true

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


# Device Tree
BOARD_USES_DT := true

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := efs

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

# Usb
TARGET_USES_LEGACY_ADB_INTERFACE := true

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += $(LOCAL_PATH)/seccomp


# Inherit from the proprietary version
-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk

