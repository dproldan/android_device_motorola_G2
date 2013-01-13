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

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \
    vendor/motorola/G2/proprietary/lib/libbt-aptx.so:/obj/lib/libbt-aptx.so \
    vendor/motorola/G2/proprietary/lib/libbt-mp3.so:/obj/lib/libbt-mp3.so \
    vendor/motorola/G2/proprietary/lib/libbt-mpeg12pl.so:/obj/lib/libbt-mpeg12pl.so \



# All the blobs necessary 

PRODUCT_COPY_FILES += \
    vendor/motorola/G2/proprietary/etc/install-recovery.sh:/system/etc/install-recovery.sh \
    vendor/motorola/G2/proprietary/lib/libbt-aptx.so:/system/lib/libbt-aptx.so \
    vendor/motorola/G2/proprietary/lib/libbt-mp3.so:/system/lib/libbt-mp3.so \
    vendor/motorola/G2/proprietary/lib/libbt-mpeg12pl.so:/system/lib/libbt-mpeg12pl.so \


