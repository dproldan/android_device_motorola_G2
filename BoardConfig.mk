# config.mk
#
# Product-specific compile-time definitions.
#

# inherit from the proprietary version
-include vendor/motorola/umts_sholes/BoardConfigVendor.mk

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := armeabi
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_HAVE_BLUETOOTH=true
BOARD_HAVE_BLUETOOTH_BCM=true

# no hardware camera
USE_CAMERA_STUB := true
