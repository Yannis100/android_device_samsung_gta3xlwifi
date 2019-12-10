BUILD_BROKEN_DUP_RULES := true

BOARD_VENDOR := samsung

VENDOR_PATH := device/samsung/gta3xlwifi

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01

# Asserts
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi,gta3xlwifixx,SM-T510

-include $(VENDOR_PATH)/board/*.mk

ifeq ($(WITH_TWRP),true)
include $(VENDOR_PATH)/twrp.mk
endif


-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk
