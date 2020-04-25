# Lineage HW
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(LOCAL_PATH)/lineagehw|**/*.java

# HWComposer
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

BOARD_USES_HWC_SERVICES := true
