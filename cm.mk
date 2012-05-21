## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/pororo/pororo.mk)

PRODUCT_NAME := cm_pororo

# Release name and versioning
PRODUCT_RELEASE_NAME := PORORO
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pororo

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=PantechP4100 BUILD_FINGERPRINT=ATT/PantechP4100/pororo:3.2.1/HTK75/pororo_ver1_0603:user/release-keys PRIVATE_BUILD_DESC="msm8660_surf-user 3.2.1 HTK75 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
