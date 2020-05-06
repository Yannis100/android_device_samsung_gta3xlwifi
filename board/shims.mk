# Shims: camera
TARGET_LD_SHIM_LIBS += \
    /system/lib/libexynoscamera.so|libexynoscamera_shim.so

# Shims: gps
TARGET_LD_SHIM_LIBS += \
    /system/bin/gpsd|gpsd_shim.so
