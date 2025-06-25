#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/tonga

# A/B
AB_OTA_PARTITIONS += \
recovery

# TODO: Add ANT+

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# TODO: Add Audio

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := tonga

# Display
TARGET_SCREEN_DENSITY := 270

# Filesystem
TARGET_FS_CONFIG_GEN := \
    $(DEVICE_PATH)/mke2fs.conf

# TODO: Add GPS

# Kernel TODO: Add other kernel configs and modules
BOARD_BOOT_HEADER_VERSION := 2
TARGET_KERNEL_CONFIG += vendor/ext_config/tonga-default.config

# Kernel Modules - Recovery
BOARD_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_KERNEL_MODULES_LOAD)

# Media
TARGET_USES_ION := true

# Partitions TODO: Update partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 102400000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 48937967000

BOARD_SUPER_PARTITION_SIZE := 10027008000
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 5009309696 # (BOARD_SUPER_PARTITION_SIZE / 2) - 4MB

# Platform
TARGET_BOARD_PLATFORM := mt6765
BOARD_HAS_MTK_HARDWARE := true

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Power
TARGET_USES_INTERACTION_BOOST := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Recovery
TARGET_RECOVERY_DENSITY := hdpi
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/fstab.mt6765
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 70

# Sepolicy
include device/mediatek/sepolicy_vndr/SEPolicy.mk
include hardware/motorola/sepolicy/qti/SEPolicy.mk

# Security patch level
BOOT_SECURITY_PATCH := 2023-12-01
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_ROLLBACK_INDEX := 20

# TODO: Add WLAN

# Inherit from the proprietary version
include vendor/motorola/tonga/BoardConfigVendor.mk
