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
#
# Inherit from the proprietary version

include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/gta3xlwifi

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSA25A003KU

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage-dtb
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

BOARD_KERNEL_IMAGE_NAME := zImage-dtb


# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos7885
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g71
TARGET_BOOTLOADER_BOARD_NAME := universal7885
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 47185920
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3196059648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26914848768
BOARD_CACHEIMAGE_PARTITION_SIZE := 159383552
BOARD_VENDORIMAGE_PARTITION_SIZE   := 343932928

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# TWRP Configuration
RECOVERY_VARIANT := twrp
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_NO_LEGACY_PROPS := true

# Encryption
#TARGET_HW_DISK_ENCRYPTION := true
#TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "hbtp_vm"

### SYSTEM PROPS
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
