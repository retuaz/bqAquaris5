# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Device Configuration
$(call inherit-product, device/bq/bqAquaris5/full_bqAquaris5.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

PRODUCT_NAME := cm_bqAquaris5
PRODUCT_DEVICE := bqAquaris5
PRODUCT_MODEL := bq Aquaris 5
PRODUCT_RELEASE_NAME := bqAquaris5
PRODUCT_BRAND := bq
PRODUCT_MANUFACTURER := bq
