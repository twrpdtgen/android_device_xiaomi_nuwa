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

# Inherit from nuwa device
$(call inherit-product, device/xiaomi/nuwa/device.mk)

PRODUCT_DEVICE := nuwa
PRODUCT_NAME := omni_nuwa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2210132C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nuwa-user 13 TKQ1.220905.001 V14.0.27.0.TMBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nuwa/nuwa:13/TKQ1.220905.001/V14.0.27.0.TMBCNXM:user/release-keys
