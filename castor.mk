# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit the shinano-common definitions
$(call inherit-product, device/sony/shinano-common/shinano.mk)

# Inherit the castor-common definitions
$(call inherit-product, device/sony/castor_windy/castor-common.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
	
BOARD_HAVE_RADIO := true

# Include non-opensource parts
$(call inherit-product, vendor/sony/castor/castor-vendor.mk)