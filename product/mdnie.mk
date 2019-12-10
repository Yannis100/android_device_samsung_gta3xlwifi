####################
# mDNIe            #
####################
ifeq ($(filter gta3xlwifi, $(TARGET_DEVICE)),)

PRODUCT_PACKAGES += \
   AdvancedDisplay

endif
