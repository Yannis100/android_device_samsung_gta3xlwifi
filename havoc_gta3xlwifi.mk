# Inherit some common AICP stuff.
$(call inherit-product, vendor/havoc/config/common_full_tablet_wifionly.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gta3xlwifi device
$(call inherit-product, device/samsung/gta3xlwifi/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab A

# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := havoc_gta3xlwifi
PRODUCT_MODEL := SM-T510
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gta3xlwifi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:9/PPR1.180610.011/T510XXU2ASJD:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gta3xlwifi \
  PRODUCT_NAME=gta3xlwifixx \
  PRIVATE_BUILD_DESC="gta3xlwifixx-user 9 PPR1.180610.011 T510XXU2ASJD release-keys"
