	# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Havoc stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from gta3xlwifi device
$(call inherit-product, device/samsung/gta3xlwifi/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab A

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gta3xlwifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gta3xlwifi
PRODUCT_MODEL := SM-T510
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gta3xlwifi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/gta3xlwifixx/gta3xlwifi:9/PPR1.180610.011/T510XXS2ASK1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gta3xlwifi \
  PRODUCT_NAME=gta3xlwifixx \
  PRIVATE_BUILD_DESC="gta3xlwifixx-user 9 PPR1.180610.011 T510XXS2ASK1 release-keys"
