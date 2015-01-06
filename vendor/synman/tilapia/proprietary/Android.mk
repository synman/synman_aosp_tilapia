# Copyright (C) 2011 The Android Open Source Project
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

ifeq ($(TARGET_DEVICE),tilapia)

include $(CLEAR_VARS)
LOCAL_MODULE := Superuser
LOCAL_SRC_FILES := Superuser.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := asus
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := NovaLauncher
LOCAL_SRC_FILES := NovaLauncher.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := asus
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Sunbeam
LOCAL_SRC_FILES := Sunbeam.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/app
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := asus
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := bootanimation
LOCAL_SRC_FILES := bootanimation.zip
LOCAL_MODULE_SUFFIX := .zip
LOCAL_MODULE_CLASS := MEDIA
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/media
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := asus
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := rild
LOCAL_SRC_FILES := rild
LOCAL_MODULE_SUFFIX :=
LOCAL_MODULE_CLASS := BINARY
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_PATH := $(TARGET_OUT)/bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := asus
include $(BUILD_PREBUILT)

endif
