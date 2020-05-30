# Shims: gps
TARGET_LD_SHIM_LIBS += \
    /system/bin/gpsd|gpsd_shim.so \
    /system/lib/libstagefright.so|libstagefright_shim.so
    
# Shims
#TARGET_LD_SHIM_LIBS := \
#   /system/lib/libcamera_client.so|libcamera_client_shim.so \
#    /system/lib/libexynoscamera.so|libexynoscamera_shim.so \
    

