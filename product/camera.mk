####################
# Camera
####################

ifeq ($(filter gta3xlwifi, $(TARGET_DEVICE)),)

PRODUCT_PACKAGES += \
	Snap

endif

PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl-legacy \
    android.hardware.camera.provider@2.4-service
