#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amlogic/ohm

## Bluetooth
BOARD_HAVE_BLUETOOTH := true

## Bootloader
TARGET_BOOTLOADER_BOARD_NAME := ohm

## DTB
TARGET_DTB_NAME := sc2_s905x4_ah212_drm
TARGET_DTBO_NAME := android_overlay_dt
BOARD_KERNEL_SEPARATED_DTBO := true

## Kernel
TARGET_KERNEL_PLATFORM_TARGET := ohm
TARGET_KERNEL_SOURCE := vendor/amlogic/ohm-build
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/vendor_dlkm.modules.load))
BOOT_KERNEL_MODULES := $(strip $(shell cat $(DEVICE_PATH)/vendor_boot.modules.load))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

## Kernel modules
TARGET_KERNEL_EXT_MODULES := \
    dhd-driver/bcmdhd.101.10.361.x

## Partitions
BOARD_SUPER_PARTITION_SIZE := 1887436800

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

## Wi-Fi
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_AP := "/wifi/fw_bcm4356a2_ag_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/wifi/fw_bcm4356a2_ag.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/dhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X

## Include the common tree BoardConfig makefile
include device/amlogic/ne-common/BoardConfigCommon.mk

## Include the proprietary BoardConfig makefile
include vendor/amlogic/ohm/BoardConfigVendor.mk
