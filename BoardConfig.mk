#
# Copyright (C) 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/digma/fh05ahgo

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6739
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6739

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

BOARD_USES_MTK_HARDWARE := true

# Kernel properties
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE = 0x40000000
BOARD_RAMDISK_OFFSET = 0x05000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_TAGS_OFFSET = 0x04000000
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

TARGET_PREBUILT_KERNEL := device/digma/fh05ahgo/prebuilt/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP
HAVE_SELINUX := true
DEVICE_RESOLUTION := 480x960
TW_IGNORE_MAJOR_AXIS_0 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_ALLOW_PARTITION_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
# TW_INTERNAL_STORAGE_PATH := "/data/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
# TW_THEME := portrait_hdpi
TW_NO_REBOOT_BOOTLOADER := false
#TW_INCLUDE_CRYPTO := true
# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.0/file
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
# Misc
TW_NO_SCREEN_TIMEOUT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEFAULT_LANGUAGE := ru
TW_DEVICE_VERSION := by mehanik6
#TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_EXCLUDE_SUPERSU := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_HAS_MTP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

# Crypto
#TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_FBE := true
#ALLOW_MISSING_DEPENDENCIES := true
