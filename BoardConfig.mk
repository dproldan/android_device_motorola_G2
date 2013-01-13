# config.mk
#
# Product-specific compile-time definitions.
#

# inherit from the proprietary version
-include vendor/motorola/G2/BoardConfigVendor.mk

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

# Custom releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/motorola/G2/releasetools/G2_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/motorola/G2/releasetools/G2_ota_from_target_files
