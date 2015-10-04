# Copyright (C) 2014 The Android Open Source Project
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

include $(CLEAR_VARS)

LOCAL_MODULE := SynaToolbox

LOCAL_CFLAGS := -Wno-sign-compare -Wall -Werror

LOCAL_SHARED_LIBRARIES := \
        libcrypto \
        libcutils \
        libdl \
        libhardware_legacy \
        liblog \
        liblogwrap \
        libmdnssd \
        libnetutils \
        libsysutils \

LOCAL_SRC_FILES := \
	SynaToolbox.c \
	backdoor_access.c \
	data_logger.c \
	fw_update.c \
	read_report.c \
	reg_access.c

include $(BUILD_EXECUTABLE)
