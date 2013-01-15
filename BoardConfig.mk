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
TARGET_BOOTLOADER_BOARD_NAME := mapphone_umts
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
BOARD_USES_GENERIC_AUDIO := true
BOARD_HAVE_BLUETOOTH:=true
BOARD_HAVE_BLUETOOTH_BCM:=true

# no hardware camera
USE_CAMERA_STUB := true




