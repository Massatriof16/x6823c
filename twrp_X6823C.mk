#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)


# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)



# Inherit from Infinix-X6823C device
$(call inherit-product, device/infinix/X6823C/device.mk)

PRODUCT_DEVICE := X6823C
PRODUCT_NAME := twrp_X6823C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6823C
PRODUCT_MANUFACTURER := infinix
