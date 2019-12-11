# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \
	ro.carrier=wifi-only \
	ro.radio.noril=1 \
	ro.config.low_ram=false \
	ro.config.zram=false \
	ro.sf.lcd_density=240 \
	telephony.lteOnCdmaDevice=0

# USB debugging at boot
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1 \
	persist.service.adb.enable=1

	
PRODUCT_PROPERTY_OVERRIDES += \
	ro.arch=exynos7885 \
	ro.kernel.qemu=0 \
	ro.kernel.qemu.gles=1 \
	dev.usbsetting.embedded=on \
	ro.debug_level=0x494d \
	ro.vendor.cscsupported=1 \
	ro.qq.camera.sensor=3 \
	ro.hardware=samsungexynos7885 \
	ro.chipname=exynos7885

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.disable_triple_buffer=0

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
	net.tethering.noprovisioning=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	camera2.portability.force_api=1

# Strict Mode
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.disable=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.bluetooth.soc=rome

# sdcardfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.sdcardfs=true

# Allows healthd to boot directly from charger mode rather than initiating a reboot.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.enable_boot_charger_mode=1

# Default OMX service to non-Treble
PRODUCT_PROPERTY_OVERRIDES += \
	persist.media.treble_omx=false

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.default_init_rwnd=60
