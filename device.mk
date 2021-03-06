#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/jf-gsm-common/jf-gsm-common-vendor.mk)

## device overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/jfltexx/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/jf-common/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/samsung/jf-common/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/jf-common/bluetooth/bcm4335_prepatch.hcd:system/vendor/firmware/bcm4335_prepatch.hcd

# Wifi
PRODUCT_PACKAGES += \
    macloader

PRODUCT_COPY_FILES += \
    device/samsung/jf-common/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/samsung/jf-common/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Inherit from jf-common
$(call inherit-product, device/samsung/jf-common/jf-common.mk)

