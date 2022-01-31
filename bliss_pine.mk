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
    PRIVATE_BUILD_DESC="pine-user 10 QKQ1.191014.001 V12.5.1.0.QCMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/pine/pine:10/QKQ1.191014.001/V12.5.1.0.QCMCNXM:user/release-keys"