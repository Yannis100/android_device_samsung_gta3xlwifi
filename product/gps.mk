# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/gps.cfg \
    $(LOCAL_PATH)/configs/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gps.xml

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

PRODUCT_PACKAGES += \
    gpsd_shim
