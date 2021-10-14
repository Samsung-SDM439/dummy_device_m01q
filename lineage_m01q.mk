# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m01q device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m01q
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m01q
PRODUCT_MODEL := SM-M015G

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m01q
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m01qins-user 11 RP1A.200720.012 M015GXXU3BUH1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m01qins/m01q:11/RP1A.200720.012/M015GXXU3BUH1:user/release-keys
