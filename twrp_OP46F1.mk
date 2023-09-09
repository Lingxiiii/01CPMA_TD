#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from OP46F1 device
$(call inherit-product, device/oppo/OP46F1/device.mk)

PRODUCT_DEVICE := OP46F1
PRODUCT_NAME := twrp_OP46F1
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PCAM10
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1634650806319 release-keys"

BUILD_FINGERPRINT := alps/vnd_oppo6771/oppo6771:11/RP1A.200720.011/1634650806319:user/release-keys
