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

DEVICE_PATH := device/samsung/universal9611
DEVICE := m30s

BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/$(DEVICE)/prebuilt/recovery_dtbo
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/$(DEVICE)/prebuilt/zImage
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1 --board SRPSE30A002RU

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/$(DEVICE)/rootdir/recovery.fstab

# TWRP Flags
TW_MAX_BRIGHTNESS := 255
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_USE_SAMSUNG_HAPTICS := true

include $(DEVICE_PATH)/BoardConfig.mk
