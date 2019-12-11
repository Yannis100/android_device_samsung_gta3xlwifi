####################
# Bluetooth        #
####################

#BOARD_CUSTOM_BT_CONFIG := $(VENDOR_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_CUSTOM_BT_CONFIG := $(VENDOR_PATH)/bluetooth/bdroid_buildcfg.h
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true
