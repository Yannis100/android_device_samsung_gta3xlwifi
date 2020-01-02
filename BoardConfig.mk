VENDOR_PATH := device/samsung/gta3xlwifi
BOARD_VENDOR := samsung

WITHOUT_CHECK_API := true
TEMPORARY_DISABLE_PATH_RESTRICTIONS :=true
#SELINUX_IGNORE_NEVERALLOWS := true
BUILD_BROKEN_DUP_RULES := true

#RECOVERY_VARIANT := twrp

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01

# Asserts
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi,gta3xlwifixx,SM-T510

include $(VENDOR_PATH)/board/*.mk

-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk
