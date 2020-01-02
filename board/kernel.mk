####################
# Kernel		   #
####################

# Kernel configuration
#TARGET_LINUX_KERNEL_VERSION := 4.0

#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android- 
# 


# Image
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_KERNEL_SEPARATED_DT := true

#BOARD_CUSTOM_BOOTIMG_MK := device/samsung/gta3xlwifi/mkbootimg.mk
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSA25A001RU
#TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Kernel
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/samsung/infinity
#TARGET_KERNEL_CONFIG := exynos7885-gta3xlwifi_defconfig

#Prebuilt Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

#ifeq ($(TARGET_PREBUILT_KERNEL),)
  #TARGET_KERNEL_CLANG_COMPILE := true
  #TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
  #TARGET_KERNEL_SOURCE := kernel/samsung/gta3xlwifi-infinity
#endif
