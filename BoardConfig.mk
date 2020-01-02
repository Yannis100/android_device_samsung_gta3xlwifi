DEVICE_PATH := device/samsung/gta3xlwifi
BOARD_VENDOR := samsung

#RECOVERY_VARIANT := twrp

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01

SELINUX_IGNORE_NEVERALLOWS := true
BUILD_BROKEN_DUP_RULES := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi,gta3xlwifixx,SM-T510

include $(DEVICE_PATH)/board/*.mk


-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk
