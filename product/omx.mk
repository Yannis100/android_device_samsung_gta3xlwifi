# OpenMAX-shims
#PRODUCT_PACKAGES += \
#    libui_shim
    
PRODUCT_PACKAGES += \
    libExynosOMX_shim

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/omx/android.hardware.media.omx@1.0-service.rc:system/vendor/etc/init/android.hardware.media.omx@1.0-service.rc

