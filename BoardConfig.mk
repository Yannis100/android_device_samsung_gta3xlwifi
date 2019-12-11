BUILD_BROKEN_DUP_RULES := true

BOARD_VENDOR := samsung

VENDOR_PATH := device/samsung/gta3xlwifi

# Security patch level
VENDOR_SECURITY_PATCH := 2019-11-01

# Asserts
TARGET_OTA_ASSERT_DEVICE := gta3xlwifi,gta3xlwifixx,SM-T510

-include $(VENDOR_PATH)/board/*.mk


# HWComposer
BOARD_USES_VPP := true
#BOARD_USES_VPP_V2 := true // 8890 only
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
#BOARD_USES_HWC_TINY := true
BOARD_USES_HWC_SERVICES := true

# Device Tree
BOARD_USES_DT := true

# WiFiDisplay
#BOARD_USES_VIRTUAL_DISPLAY := true - depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USES_VDS_BGRA8888 := true
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true


SELINUX_IGNORE_NEVERALLOWS := true

ifeq ($(WITH_TWRP),true)
include $(VENDOR_PATH)/twrp.mk
endif


-include vendor/samsung/gta3xlwifi/BoardConfigVendor.mk
