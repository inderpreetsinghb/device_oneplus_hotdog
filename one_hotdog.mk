#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/one/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := one_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7T Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Face Unlock
TARGET_GAPPS_ARCH := arm64

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7TPro/OnePlus7TPro:10/QKQ1.190716.003/2007291610:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7TPro \
    PRODUCT_NAME=OnePlus7TPro \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="OnePlus7TPro-user 10 QKQ1.190716.003 2007291610 release-keys"

PLATFORM_SECURITY_PATCH_OVERRIDE := 2020-08-01

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
