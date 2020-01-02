 
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.renderscript@1.0-impl \
    gralloc.exynos5 \
    libhwc2on1adapter \
    memtrack.exynos5

PRODUCT_PACKAGES += \
    libtinyxml

PRODUCT_PACKAGES += \
    libion \
    libfimg
    
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service
    
# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl.exynos7870 \
    android.hardware.camera.provider@2.4-service \
    camera.universal7870 \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    camera.device@3.3-impl \
    camera.device@3.4-impl

PRODUCT_PACKAGES += \
    libhwjpeg \
    libion_exynos

PRODUCT_PACKAGES += \
    libexynoscamera_shim
    
PRODUCT_PACKAGES += \
    libxml2 \
    libprotobuf-cpp-full

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0 \
    libandroid_net \
    netutils-wrapper-1.0
    
PRODUCT_PACKAGES += \
    hostapd \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    wificond \
    android.hardware.wifi@1.0-service

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.common@5.0 \
    android.hardware.audio.common@5.0-util \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@5.0 \
    android.hardware.audio.effect@5.0-impl \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinycompress

PRODUCT_PACKAGES += \
    audio.primary.universal7885_32
    
# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service
    
# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl
    
# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    android.hardware.power.stats@1.0-service.mock \
    power.universal7885
    
    
# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic
