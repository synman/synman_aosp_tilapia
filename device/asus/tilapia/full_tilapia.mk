# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Get the long list of APNs and add GwT specifics
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml \
	device/asus/tilapia/prebuilt/xbin/mountrw.sh:system/xbin/mountrw.sh \
	device/asus/tilapia/prebuilt/xbin/busybox:system/xbin/busybox \
	device/asus/tilapia/prebuilt/xbin/su:system/xbin/su \
	device/asus/tilapia/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/asus/tilapia/device.mk)

# bring in custom GwT prebuilts (Superuser)
$(call inherit-product-if-exists, vendor/synman/tilapia/device-partial.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_tilapia
PRODUCT_DEVICE := tilapia
PRODUCT_BRAND := Google
PRODUCT_MANUFACTURER := Asus
PRODUCT_MODEL := Nexus 7 3G
