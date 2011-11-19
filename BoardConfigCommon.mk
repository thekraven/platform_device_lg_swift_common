# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv5te-vfp

TARGET_BOOTLOADER_BOARD_NAME := swift
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_USES_OLD_LIBSENSORS_HAL:=true
TARGET_OTA_ASSERT_DEVICE := swift
TARGET_NO_BOOTLOADER := true
#TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#JS_ENGINE := v8
#TARGET_USES_2G_VM_SPLIT := true

#Add ICS GPU Rendering to config 
USE_OPENGL_RENDERER := true


# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE           := bcm4325
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wl/rtecdc.bin"
#WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "wireless"

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE :=  mem=214M console=tty0,115200n8 androidboot.hardware=swift uart.mode=arm11_uart_disable crash=off
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=device/lg/swift-common/prelink-linux-arm-swift.map


BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true

#WITH_DEXPREOPT := true
BOARD_VENDOR_USE_AKMD := akm8973

BOARD_EGL_CFG := device/lg/swift-common/egl.cfg

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 000e0000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 07800000 00020000 "system"
# mtd4: 07800000 00020000 "cache"
# mtd5: 0c440000 00020000 "userdata"
# mtd6: 00200000 00020000 "crashdata"
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00280000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08400000   # limited so we enforce room to grow
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c440000
#BOARD_FLASH_BLOCK_SIZE := 131072

# Set the system image size limit to the full physical space available for eng build
#ifeq (eng,$(TARGET_BUILD_VARIANT))
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09000000
#endif

#TARGET_RECOVERY_UI_LIB := librecovery_ui_passion librecovery_ui_htc

#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_htc

#TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# to enable the GPS HAL
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mahimahi
#BOARD_GPS_LIBRARIES := libloc_api

# AMSS version to use for GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 3200

