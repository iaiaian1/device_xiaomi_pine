#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common sdm439-common
include device/xiaomi/sdm439-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/pine

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_pine
TARGET_RECOVERY_DEVICE_MODULES := libinit_pine

# Kernel
TARGET_KERNEL_CONFIG := pine-perf_defconfig

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472

# Security patch level
VENDOR_SECURITY_PATCH := 2021-07-01

# Inherit from the proprietary version
include vendor/xiaomi/pine/BoardConfigVendor.mk

# MiuiCamera
-include vendor/xiaomi/miuicamera/BoardConfigAnx.mk

