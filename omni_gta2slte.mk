#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
# $(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#
# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from gta2slte device
# $(call inherit-product, device/samsung/gta2slte/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
# $(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta2slte
PRODUCT_NAME := omni_gta2slte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T385
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := samsung SM-T385

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="samsung/gta2sltedx/gta2slte:9/PPR1.180610.011/T385DXU4CUA2:user/test-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
