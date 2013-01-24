#
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
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

## Get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/motorola/G2/G2-vendor.mk)


PRODUCT_PACKAGES += \
    bthelp \
    btcmd \
    pand \
    dund \
    tuncfg \
    tund \
    tdc \
    fdisk \
    libprojectM \
    jid3lib \
    jid3lib.xml \
    libwbxmlparser \
    jcifs-krb5-1.3.12 \
    jcifs-krb5-1.3.12.xml \
    dumpext3fs \
    libext2_profile \
    e2fsck \
    libext2_blkid \
    libext2_e2p \
    libext2_com_err \
    libext2fs \
    libext2_uuid \
    mke2fs \
    tune2fs \
    dumpe2fs \
    resize2fs \
    libspellingcheckengine \
    Usb \
    librs_jni \
    dspexec \
    libbridge \
    overlay.omap3 \
    libtiOsLib \
    Gallery \
    libCustomWifi \
    wlan_loader \
    tiwlan.ini \
    wlan_cu \
    wpa_supplicant.conf \
    libOMX.TI.AAC.decode \
    libOMX.TI.AAC.encode \
    libOMX.TI.AMR.decode \
    libOMX.TI.AMR.encode \
    libOMX.TI.WBAMR.decode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.JPEG.Encoder \
    libLCML \
    libOMX_Core \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libVendor_ti_omx \
    charge_only_mode


PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=120 \
    ro.product.multi_touch_enabled=true \
    ro.product.max_num_touch=2 \
    ro.product.board=G2
    wifi.interface=tiwlan0
    


$(call inherit-product, build/target/product/generic.mk)
$(call inherit-product, frameworks/base/data/sounds/OriginalAudio.mk)

# use low-density artwork where available
PRODUCT_LOCALES += ldpi

PRODUCT_NAME := generic_G2
PRODUCT_DEVICE := G2

