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
	persist.demo.hdmirotationlock=false \
	dev.usbsetting.embedded=on \
	ro.debug_level=0x494d \
	sys.config.phone_start_early=true \
	ro.vendor.cscsupported=1 \
	ro.qq.camera.sensor=3 \
	ro.hardware=samsungexynos7885 \
	ro.chipname=exynos7885

