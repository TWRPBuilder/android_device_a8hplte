# Release name
PRODUCT_RELEASE_NAME := o7prolte

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration.
$(call inherit-product, device/samsung/o7prolte/o7prolte.mk)

# Device identifier.
PRODUCT_DEVICE := o7prolte
PRODUCT_NAME := omni_o7prolte
PRODUCT_BRAND := o7prolte
PRODUCT_MODEL := SM-G600FY
PRODUCT_MANUFACTURER := samsung
