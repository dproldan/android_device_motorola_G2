#!/system/bin/sh
export PATH=/system/bin:/system/xbin:$PATH

device=/dev/block/mmcblk1p22
mount=/mnt/sdcard
#model=`getprop ro.product.model`
model=motoactv

if mount -t vfat $device $mount; then
    umount $mount
else
    if mount -t ext2 $device $mount; then
        echo error - $mount has ext file system
        umount $mount
    else
        if newfs_msdos -F 32 -S 512 -L "$model" -c 64 -u 16 $device; then
            echo $device formatted
        else
            echo error - $device format failed
        fi
    fi
fi
