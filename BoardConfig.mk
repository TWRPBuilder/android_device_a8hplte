#
# Copyright (C) 2011 The Android Open-Source Project
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

# Platform
TARGET_BOOTLOADER_BOARD_NAME := o7prolte
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x12C00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0AF00000
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 0x00020000

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := true
TW_TARGET_USES_QCOM_BSP := true
# USB Mounting
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_CPU_TEMP := true
TARGET_KERNEL_SOURCE := kernel/samsung/o7prolte
TARGET_KERNEL_CONFIG := o7prolte_defconfig
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/o7prolte/kernel
#TARGET_RECOVERY_INITRC := device/samsung/o7prolte/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/o7prolte/recovery.fstab
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/o7prolte/mkbootimg.mk
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
DEVICE_RESOLUTION := 480x800
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_DOWNLOAD_MODE := true
SP2_NAME := "internal_sd"
SP2_BACKUP_METHOD := files
SP2_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true 
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := "/sys/devices/virtual/lcd/panel/panel/brightness"
TW_NEW_ION_HEAP := true
TW_MAX_BRIGHTNESS := 255
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/o7prolte/recovery/graphics.c

