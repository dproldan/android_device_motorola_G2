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
    libspellingcheckengine


PRODUCT_COPY_FILES += \
    device/motorola/G2/prebuilt/lib/libbt-aptx.so:/system/lib/libbt-aptx.so \
    device/motorola/G2/prebuilt/lib/libbt-mp3.so:/system/lib/libbt-mp3.so \
    device/motorola/G2/prebuilt/lib/libbt-mpeg12pl.so:/system/lib/libbt-mpeg12pl.so \
    device/motorola/G2/prebuilt/lib/libbt-aptx.so:/obj/lib/libbt-aptx.so \
    device/motorola/G2/prebuilt/lib/libbt-mp3.so:/obj/lib/libbt-mp3.so \
    device/motorola/G2/prebuilt/lib/libbt-mpeg12pl.so:/obj/lib/libbt-mpeg12pl.so \


$(call inherit-product, build/target/product/generic.mk)

# use high-density artwork where available
PRODUCT_LOCALES += ldpi

PRODUCT_NAME := generic_G2
PRODUCT_DEVICE := G2

