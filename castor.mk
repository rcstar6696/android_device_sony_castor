# Copyright (C) 2014 The CyanogenMod Project
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

BOARD_HAVE_RADIO := true

# Inherit the castor-common definitions
$(call inherit-product, device/sony/castor_windy/castor-common.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Audio
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
   $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Include non-opensource parts
$(call inherit-product, vendor/sony/castor/castor-vendor.mk)

# TWRP
$(call inherit-product, device/sony/castor_windy/twrp.mk)

