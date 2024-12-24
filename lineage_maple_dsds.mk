$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/sony/maple_dsds/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### BOOTANIMATION
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Rising
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 835" \
    RisingMaintainer="Arman ATI"

# Blur
TARGET_ENABLE_BLUR := true

# Launchers
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Extra stuff
TARGET_PREBUILT_BCR := true

# Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Gapps
WITH_GMS := true

# ADB root
ALLOW_ADBD_ROOT := true
ALLOW_LOCAL_PROP_OVERRIDE := true

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_maple_dsds
PRODUCT_DEVICE := maple_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8142-user 9 47.2.A.10.107 172320177 release-keys" \
    BuildFingerprint=Sony/G8142/G8142:9/47.2.A.10.107/172320177:user/release-keys
