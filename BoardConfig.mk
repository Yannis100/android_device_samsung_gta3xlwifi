LOCAL_PATH := device/samsung/gta3xlwifi
BOARD_VENDOR := samsung

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01

# Asserts
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi,gta3xlwifixx,SM-T510

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos7885
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g71
TARGET_BOOTLOADER_BOARD_NAME := universal7885
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_RADIOIMAGE := true


# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSA25A001RU
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/recovery_dtbo

#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
#BOARD_DTBTOOL_ARGS := -2

#TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
#TARGET_KERNEL_CONFIG := exynos7885-gta3xlwifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gta3xlwifi


# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(LOCAL_PATH)/framework_compatibility_matrix.xml


# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 47185920
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3196059648
BOARD_CACHEIMAGE_PARTITION_SIZE := 159383552

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Recovery
#TARGET_NO_RECOVERY := true
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/recovery.fstab
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true

#RECOVERY_VARIANT := twrp

# TWRP specific build flags
ifeq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/twrp.fstab
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_NO_LEGACY_PROPS := true
TW_DEVICE_VERSION := 5
endif

ifeq ($(RECOVERY_VARIANT),twrp)
    BOARD_GLOBAL_CFLAGS += -DTW_USE_MINUI_CUSTOM_FONTS
endif

-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk
