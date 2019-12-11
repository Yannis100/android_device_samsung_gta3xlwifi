####################
# Kernel		   #
####################

# Kernel configuration
#TARGET_KERNEL_ARCH := arm32
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSA25A001RU
TARGET_KERNEL_SOURCE := kernel/samsung/univeral7885
TARGET_KERNEL_CONFIG := exynos7885-gta3xlwifi_defconfig

# Prebuilt Kernel
#BOARD_INCLUDE_RECOVERY_DTBO := true
#BOARD_PREBUILT_DTBOIMAGE := $(VENDOR_PATH)/prebuilt/recovery_dtbo
#TARGET_PREBUILT_KERNEL := $(VENDOR_PATH)/prebuilt/kernel

BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
