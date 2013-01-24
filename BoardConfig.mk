# config.mk
#
# Product-specific compile-time definitions.
#

# inherit from the proprietary version
-include vendor/motorola/G2/BoardConfigVendor.mk

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap3
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi
#TARGET_BOOTLOADER_BOARD_NAME := mapphone_umts
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon



#audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
HAVE_2_3_DSP := 1
TARGET_PROVIDES_LIBAUDIO := true
HARDWARE_OMX := true
TARGET_USE_OMAP_COMPAT  := true
TARGET_USE_OMX_RECOVERY := true
BUILD_WITH_TI_AUDIO := 1
#BUILD_PV_VIDEO_ENCODERS := 1

# bluetooth
BOARD_HAVE_BLUETOOTH:=true
BOARD_HAVE_BLUETOOTH_BCM:=true

# no hardware camera
USE_CAMERA_STUB := true

BOARD_ALWAYS_INSECURE := true

BOARD_NO_32BPP := true


# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := tiwlan0
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/tiwlan_drv.ko"
BOARD_WLAN_TI_STA_DK_ROOT := system/wlan/ti/wilink_6_1
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_MODULE_NAME := "tiwlan_drv"
WIFI_FIRMWARE_LOADER := "wlan_loader"
