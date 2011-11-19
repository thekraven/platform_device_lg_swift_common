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

LOCAL_PATH := $(call my-dir)
#
#$(call add-radio-file,recovery/images/firmware_install.565)
#$(call add-radio-file,recovery/images/firmware_error.565)
#$(call add-radio-file,recovery/images/bitmap_size.txt)

#include $(CLEAR_VARS)
#LOCAL_MODULE_TAGS := optional
#LOCAL_SRC_FILES := swift.kcm.bin qwerty.kcm.bin qwerty2.kcm.bin
#include $(BUILD_KEY_CHAR_MAP)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)