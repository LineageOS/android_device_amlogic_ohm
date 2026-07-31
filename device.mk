#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
PRODUCT_PACKAGES += \
    OhmBluetoothOverlay \
    libbt-vendor

## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Keylayout (IR)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Vendor_0001_Product_0001.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Vendor_0001_Product_0001.kl

## Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

## Wi-Fi
BOARD_HAVE_WIFI := false

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/ne-common/ne.mk)

## Inherit from the proprietary files makefile
$(call inherit-product, vendor/amlogic/ohm/ohm-vendor.mk)
