# Release name
PRODUCT_RELEASE_NAME := a8hplte

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/samsung/a8hplte/a8hplte.mk)

# Device identifier.
PRODUCT_DEVICE := a8hplte
PRODUCT_NAME := omni_a8hplte
PRODUCT_BRAND := a8hplte
PRODUCT_MODEL := SM-8000
PRODUCT_MANUFACTURER := samsung
