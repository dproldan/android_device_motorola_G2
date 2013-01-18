# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,BOARD
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH = vendor/motorola/G2
DEVICE_PREBUILT := ${DEVICE_PATH}/proprietary


# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    ${DEVICE_PREBUILT}/lib/libbt-aptx.so:/obj/lib/libbt-aptx.so \
    ${DEVICE_PREBUILT}/lib/libbt-mp3.so:/obj/lib/libbt-mp3.so \
    ${DEVICE_PREBUILT}/lib/libbt-mpeg12pl.so:/obj/lib/libbt-mpeg12pl.so \
    ${DEVICE_PREBUILT}/lib/libaudio.so:/obj/lib/libaudio.so \
    ${DEVICE_PREBUILT}/lib/libaudiopolicy.so:/obj/lib/libaudiopolicy.so \


# All the blobs that appear in the stock init.rc and init.mapphone_umts.rc 

PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/etc/install-recovery.sh:/system/etc/install-recovery.sh \
    ${DEVICE_PREBUILT}/lib/libbt-aptx.so:/system/lib/libbt-aptx.so \
    ${DEVICE_PREBUILT}/lib/libbt-mp3.so:/system/lib/libbt-mp3.so \
    ${DEVICE_PREBUILT}/lib/libbt-mpeg12pl.so:/system/lib/libbt-mpeg12pl.so \
    ${DEVICE_PREBUILT}/bin/wlan_loader:/system/bin/wlan_loader \
    ${DEVICE_PREBUILT}/etc/wifi/fw_tiwlan_ap.bin:/system/etc/wifi/fw_tiwlan_ap.bin \
    ${DEVICE_PREBUILT}/etc/wifi/tiwlan_ap.ini:/system/etc/wifi/tiwlan_ap.ini \
    ${DEVICE_PREBUILT}/etc/wifi/fw_tiwlan_ap_rfmd.bin:/system/etc/wifi/fw_tiwlan_ap_rfmd.bin \
    ${DEVICE_PREBUILT}/etc/wifi/tiwlan_ap_rfmd.ini:/system/etc/wifi/tiwlan_ap_rfmd.ini \
    ${DEVICE_PREBUILT}/bin/Hostapd:/system/bin/Hostapd \
    ${DEVICE_PREBUILT}/bin/mount_ext3.sh:/system/bin/mount_ext3.sh \
    ${DEVICE_PREBUILT}/lib/modules/sec.ko:/system/lib/modules/sec.ko \
    ${DEVICE_PREBUILT}/bin/load_modules.sh:/system/bin/load_modules.sh \
    ${DEVICE_PREBUILT}/lib/modules/snd-soc-cs48l10.ko:/system/lib/modules/snd-soc-cs48l10.ko \
    ${DEVICE_PREBUILT}/bin/startup_smc.sh:/system/bin/startup_smc.sh \
    ${DEVICE_PREBUILT}/lib/modules/vpnclient.ko:/system/lib/modules/vpnclient.ko \
    ${DEVICE_PREBUILT}/bin/mot_boot_mode:/system/bin/mot_boot_mode \
    ${DEVICE_PREBUILT}/bin/dbvc_atvc_property_set:/system/bin/dbvc_atvc_property_set \
    ${DEVICE_PREBUILT}/bin/usbd:/system/bin/usbd \
    ${DEVICE_PREBUILT}/bin/msp430:/system/bin/msp430 \
    ${DEVICE_PREBUILT}/bin/gkisystem:/system/bin/gkisystem \
    ${DEVICE_PREBUILT}/bin/rild_tcmd:/system/bin/rild_tcmd \
    ${DEVICE_PREBUILT}/bin/ecckeyd:/system/bin/ecckeyd \
    ${DEVICE_PREBUILT}/bin/gkilogd:/system/bin/gkilogd \
    ${DEVICE_PREBUILT}/bin/pvrsrvinit:/system/bin/pvrsrvinit \
    ${DEVICE_PREBUILT}/bin/secclkd:/system/bin/secclkd \
    ${DEVICE_PREBUILT}/bin/tcmd:/system/bin/tcmd \
    ${DEVICE_PREBUILT}/bin/serialno_tracker:/system/bin/serialno_tracker \
    ${DEVICE_PREBUILT}/bin/battd:/system/bin/battd \
    ${DEVICE_PREBUILT}/bin/gps_driver:/system/bin/gps_driver \
    ${DEVICE_PREBUILT}/default.prop:/system/default.prop \
    
# copy all of our kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/G2/proprietary/lib/modules && \
	find vendor/motorola/G2/proprietary/lib/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

#key layouts, names must fit the ones in /proc/bus/input/devices, qwerty.kl is the fallback one.
PRODUCT_COPY_FILES += \
	${DEVICE_PREBUILT}/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	${DEVICE_PREBUILT}/usr/keylayout/hs-key.kl:system/usr/keylayout/hs-key.kl \
	${DEVICE_PREBUILT}/usr/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl \
	${DEVICE_PREBUILT}/usr/keylayout/G2-keypad.kl:system/usr/keylayout/G2-keypad.kl \
	${DEVICE_PREBUILT}/usr/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	${DEVICE_PREBUILT}/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \

#copy hw libs under system/lib/hw
PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/lib/hw/alsa.G2.so:system/lib/hw/alsa.G2.so \
    ${DEVICE_PREBUILT}/lib/hw/gps.G2.so:system/lib/hw/gps.G2.so \
    ${DEVICE_PREBUILT}/lib/hw/kinetics.G2.so:system/lib/hw/kinetics.G2.so \
    ${DEVICE_PREBUILT}/lib/hw/lights.G2.so:system/lib/hw/lights.G2.so \
    ${DEVICE_PREBUILT}/lib/hw/sensors.G2.so:system/lib/hw/sensors.G2.so \
#    ${DEVICE_PREBUILT}/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \

#copy hw libs under system/etc/firmware
PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/etc/firmware/cs48l10.bin:system/etc/firmware/cs48l10.bin \
    ${DEVICE_PREBUILT}/etc/firmware/wl1271.bin:system/etc/firmware/wl1271.bin \
    ${DEVICE_PREBUILT}/etc/firmware/wl1271_ANT.bin:system/etc/firmware/wl1271_ANT.bin \
    ${DEVICE_PREBUILT}/etc/firmware/wl1271_LE.bin:system/etc/firmware/wl1271_LE.bin \

#copy hw libs under system/etc/mspfirmware
PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/etc/mspfirmware/mspfirmware.bin:system/etc/mspfirmware/mspfirmware.bin \
    ${DEVICE_PREBUILT}/etc/mspfirmware/mspfirmwarefactory.bin:system/etc/mspfirmware/mspfirmwarefactory.bin \
    ${DEVICE_PREBUILT}/etc/mspfirmware/version.txt:system/etc/mspfirmware/version.txt \

#copy audio libs under system/lib/
PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/lib/libaudio.so:system/lib/libaudio.so \
    ${DEVICE_PREBUILT}/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
    ${DEVICE_PREBUILT}/lib/libasound.so:system/lib/libasound.so \

#copy binaries as needed
PRODUCT_COPY_FILES += \
    ${DEVICE_PREBUILT}/lib/libpvr2d.so:/system/lib/libpvr2d.so \
    ${DEVICE_PREBUILT}/lib/libsrv_um.so:/system/lib/libsrv_um.so \
    ${DEVICE_PREBUILT}/lib/egl/egl.cfg:/system/lib/egl/egl.cfg \
    ${DEVICE_PREBUILT}/lib/egl/libeglinfo.so:/system/lib/egl/libeglinfo.so \
    ${DEVICE_PREBUILT}/lib/egl/libEGL_POWERVR_SGX530_125.so:/system/lib/egl/libEGL_POWERVR_SGX530_125.so \
    ${DEVICE_PREBUILT}/lib/egl/libgles1_texture_stream.so:/system/lib/egl/libgles1_texture_stream.so \
    ${DEVICE_PREBUILT}/lib/egl/libgles2_texture_stream.so:/system/lib/egl/libgles2_texture_stream.so \
    ${DEVICE_PREBUILT}/lib/egl/libGLES_android.so:/system/lib/egl/libGLES_android.so \
    ${DEVICE_PREBUILT}/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:/system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
    ${DEVICE_PREBUILT}/lib/egl/libGLESv2_POWERVR_SGX530_125.so:/system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \

#PRODUCT_COPY_FILES += $(shell test -d vendor/motorola/G2/proprietary/xbin && \
#	find vendor/motorola/G2/proprietary/xbin -name '*' \
#	-printf '%p:system/xbin/%f ')

PRODUCT_COPY_FILES += \
     ${DEVICE_PREBUILT}/media/bootanimation.zip:system/media/bootanimation.zip \
     ${DEVICE_PREBUILT}/xbin/busybox:system/xbin/busybox \
     ${DEVICE_PREBUILT}/bin/check_sdc.sh:system/bin/check_sdc.sh \
     ${DEVICE_PREBUILT}/etc/vold.fstab:system/etc/vold.fstab \
     ${DEVICE_PREBUILT}/etc/asound.conf:system/etc/asound.conf \
     ${DEVICE_PREBUILT}/bin/loadpreinstalls.sh:system/bin/loadpreinstalls.sh \
     ${DEVICE_PREBUILT}/bin/vold:system/bin/vold \

#  gps
PRODUCT_COPY_FILES += \
     ${DEVICE_PREBUILT}/etc/location.cfg:system/etc/location.cfg \
     ${DEVICE_PREBUILT}/etc/location/gsd4e.pd2:system/etc/location/gsd4e.pd2 \
     ${DEVICE_PREBUILT}/bin/SiRFDrv:system/bin/SiRFDrv \
     ${DEVICE_PREBUILT}/bin/location:system/bin/location \
     ${DEVICE_PREBUILT}/lib/libgki.so:system/lib/libgki.so \
     ${DEVICE_PREBUILT}/lib/libmotodbgutils.so:system/lib/libmotodbgutils.so \
     ${DEVICE_PREBUILT}/lib/libtinyxml_stl.so:system/lib/libtinyxml_stl.so \
     ${DEVICE_PREBUILT}/lib/libtpa_core.so:system/lib/libtpa_core.so \
     ${DEVICE_PREBUILT}/lib/libcryptoki.so:system/lib/libcryptoki.so \




