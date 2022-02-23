#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Blissroms stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit from pine device
$(call inherit-product, device/xiaomi/pine/device.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pine
PRODUCT_NAME := bliss_pine
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220205.004 8151327 release-keys"
    BOOTIMAGE_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
    ODM_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
    PRODUCT_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
    SYSTEM_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
    SYSTEM_EXT_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
    VENDOR_BUILD_FINGERPRINT="google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220205.004/8151327:user/release-keys"
