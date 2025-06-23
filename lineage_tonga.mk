#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/tonga/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_tonga
PRODUCT_DEVICE := tonga
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g power (2022)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tonga_retail-user 11 RZBS31.Q2-143-27-25 418ef release-keys" \
    BuildFingerprint=motorola/tonga_retail/borneo:11/RZBS31.Q2-143-27-25/418ef:user/release-keys \
    DeviceProduct=tonga_retail