#
# Copyright (C) 2019-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

DEVICE_PATH := device/samsung/gta2slte

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

TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno308
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SRPQC10A003RU
TARGET_NO_BOOTLOADER := true

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
# TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
# TARGET_RECOVERY_DEVICE_DIRS += device/samsung/gta2slte

# Common fstab and init.rc files
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)
# BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
TARGET_KERNEL_ARCH := arm64
# TARGET_KERNEL_CONFIG := gta2slte_defconfig
# TARGET_KERNEL_SOURCE := kernel/samsung/msm8917
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3674210304
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8053977600 # 8053993984 - 16384 (footer)
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072

# Debug
# TARGET_USES_LOGD := true
# TWRP_INCLUDE_LOGCAT := true
# TWRP_EVENT_LOGGING := false

# TWRP Configuration
TW_DEVICE_VERSION := 2_BROKENAX3
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_THEME := portrait_hdpi
# TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
# TW_EXCLUDE_SUPERSU := true
# TWHAVE_SELINUX := true
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true 
TW_INCLUDE_NTFS_3G := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_IGNORE_MISC_WIPE_DATA := true
# TWRP_INCLUDE_LOGCAT := true
#
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
