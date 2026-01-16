DEVICE_PATH := device/samsung/universal9611

# Dynamic Partition Flag
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Lpdump
TW_EXCLUDE_LPDUMP := true

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# Python prebuilts
TW_EXCLUDE_PYTHON := true

# Init
PRODUCT_COPY_FILES += \
   device/samsung/universal9611/recovery/root/init.recovery.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.usb.rc \
   device/samsung/universal9611/recovery/root/init.recovery.exynos9611.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.exynos9611.rc \
   device/samsung/universal9611/recovery/root/init.recovery.samsung.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.samsung.rc \
   device/samsung/universal9611/recovery/root/system/bin/multidisabler:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/multidisabler
