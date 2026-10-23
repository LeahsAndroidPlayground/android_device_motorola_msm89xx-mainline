#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff.
TARGET_ATV_FORCE_1080_SCALING := false
$(call inherit-product, vendor/lineage/config/common_tv.mk)

# Inherit from device
PRODUCT_IS_ATV := true
$(call inherit-product, device/motorola/msm89xx-mainline/montana/device.mk)

PRODUCT_CHARACTERISTICS := tv

PRODUCT_NAME := lineage_montana_tv
PRODUCT_DEVICE := montana
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Montana TV
