# Copyright (C) 2016 The CyanogenMod Project
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

DEVICE_FOLDER := device/bq/bqAquaris5

-include vendor/bq/bqAquaris5/BoardConfigVendor.mk

# Board
TARGET_BOARD_PLATFORM := MTK6589
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

# Blob Hacks
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_ENABLE_NON_PIE_SUPPORT := true

# HWComposer
BOARD_NEEDS_OLD_HWC_API := true
COMMON_GLOBAL_CFLAGS += -DMTK_G_MT6589
COMMON_GLOBAL_CPPFLAGS += -DMTK_G_MT6589
BOARD_HAS_MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/bq/bqAquaris5HD/bluetooth

# Power
TARGET_POWERHAL_VARIANT := cm

# Boot
TARGET_NO_BOOTLOADER := true

# EGL Settings
BOARD_EGL_CFG := device/bq/bqAquaris5/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 15238272
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 921600
BOARD_USERDATAIMAGE_PARTITION_SIZE:= 7444890
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15238272
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_USE_EXT4 := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/root/fstab.mt6589
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

# MKImage to append headers
TARGET_MKIMAGE := device/bq/bqAquaris5/mkimage
TARGET_USE_BUILT_BOOTIMAGE := true

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := mediatek
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# SIM Telephony & Data
BOARD_RIL_CLASS := ../../../device/bq/bqAquaris5/ril/

# NVRam permission fix
TARGET_SPECIFIC_HEADER_PATH := device/bq/bqAquaris5/include

# More than 1 lun file
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

# SEPolicy
BOARD_SEPOLICY_DIRS += \
    device/bq/bqAquaris5HD/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    device.te \
    netd.te

DEVICE_RESOLUTION := 720x1280

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_BATTERY_PATH := /sys/devices/platform/mt6320-battery/power_supply/battery

TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
