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

# use ext3 images

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9437184
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 163840000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 158334976
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_DATA_DEVICE := /dev/block/userdata
BOARD_DATA_FILESYSTEM := ext3
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk1p18
BOARD_SYSTEM_FILESYSTEM := ext3
BOARD_CACHE_DEVICE := /dev/block/cache
BOARD_CACHE_FILESYSTEM := ext3
BOARD_PREINSTALL_DEVICE := /dev/block/preinstall
BOARD_PREINSTALL_FILESYSTEM := ext3
