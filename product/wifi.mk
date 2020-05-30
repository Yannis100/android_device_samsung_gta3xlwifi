# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/bt_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bt_registers.xml \
    $(LOCAL_PATH)/configs/wifi/cortexM4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexM4.xml \
    $(LOCAL_PATH)/configs/wifi/cortexR4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/cortexR4.xml \
    $(LOCAL_PATH)/configs/wifi/hip_signals.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hip_signals.xml \
    $(LOCAL_PATH)/configs/wifi/hydra_config.sdb:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hydra_config.sdb \
    $(LOCAL_PATH)/configs/wifi/id.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/id.txt \
    $(LOCAL_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(LOCAL_PATH)/configs/wifi/log-strings.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/log-strings.bin \
    $(LOCAL_PATH)/configs/wifi/mailbox16.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mailbox16.xml \
    $(LOCAL_PATH)/configs/wifi/mailbox4.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mailbox4.xml \
    $(LOCAL_PATH)/configs/wifi/mailbox8.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mailbox8.xml \
    $(LOCAL_PATH)/configs/wifi/mib_out.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mib_out.xml \
    $(LOCAL_PATH)/configs/wifi/moredump.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/moredump.bin \
    $(LOCAL_PATH)/configs/wifi/moredump.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/moredump.xml \
    $(LOCAL_PATH)/configs/wifi/mx:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx \
    $(LOCAL_PATH)/configs/wifi/mx140.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_bt.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_bt.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_t.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t.bin \
    $(LOCAL_PATH)/configs/wifi/mx140_t_wlan.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t_wlan.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_t_wlan_t.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_t_wlan_t.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan.hcf \
    $(LOCAL_PATH)/configs/wifi/mx140_wlan_t.hcf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/mx140_wlan_t.hcf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/pl192vic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/pl192vic.xml \
    $(LOCAL_PATH)/configs/wifi/platform.txt:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/platform.txt \
    $(LOCAL_PATH)/configs/wifi/rf_chip_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/rf_chip_registers.xml \
    $(LOCAL_PATH)/configs/wifi/symbols.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/symbols.dbg \
    $(LOCAL_PATH)/configs/wifi/unicli.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/unicli.dbg \
    $(LOCAL_PATH)/configs/wifi/unitab.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/unitab.dbg \
    $(LOCAL_PATH)/configs/wifi/univif.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/univif.dbg \
    $(LOCAL_PATH)/configs/wifi/wlan_sys_registers.xml:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wlan_sys_registers.xml \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/xide_mib.dbg:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/xide_mib.dbg
    
    
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-impl \
    android.hardware.wifi@1.0-service \
    hostapd \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    wificond \
    wifilogd \
    wifiloader \
    wlutil \
    wpa_supplicant \
    wpa_supplicant.conf
