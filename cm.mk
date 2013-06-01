## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := bliss

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/bliss/device_bliss.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bliss
PRODUCT_NAME := cm_bliss
PRODUCT_BRAND := htc
PRODUCT_MODEL := bliss
PRODUCT_MANUFACTURER := htc
