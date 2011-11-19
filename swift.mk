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
include $(call all-subdir-makefiles)
PRODUCT_PROPERTY_OVERRIDES :=
    ro.media.dec.jpeg.memcap=20000000 \
	rild.libpath=/system/lib/libril-qc-1.so \
	rild.libargs=-d /dev/smd0 \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3= \
	DEVICE_PROVISIONED=1 \
	debug.sf.hw=0 \

DEVICE_PACKAGE_OVERLAYS := device/lg/swift-common/overlay

PRODUCT_COPY_FILES := \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml 
    
# media config xml file
PRODUCT_COPY_FILES += \
    device/lg/swift-common/AudioFilter.csv:system/etc/AudioFilter.csv

#PRODUCT_PACKAGES := \
#    sensors.mahimahi \
#    lights.mahimahi \
#    librs_jni

# we have enough storage space to hold precise GC data
#PRODUCT_TAGS += dalvik.gc.type-precise

# Passion uses high-density artwork where available
PRODUCT_LOCALES := mdpi

PRODUCT_COPY_FILES += \
    device/lg/swift-common/swift.kl:system/usr/keylayout/swift.kl \
    device/lg/swift-common/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lg/swift-common/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/lg/swift-common/vold.fstab:system/etc/vold.fstab


PRODUCT_COPY_FILES += \
    device/lg/swift-common/wireless.ko:system/lib/modules/wireless.ko

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lg/swift-common/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, vendor/lg/swift-common/swift-vendor.mk)

# media profiles and capabilities spec
#$(call inherit-product, device/htc/passion-common/media_a1026.mk)

# stuff common to all LG phones
#$(call inherit-product, device/lg/common/common.mk)

