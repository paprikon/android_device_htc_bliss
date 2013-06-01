$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/bliss/ramdisk/init.bliss.rc:root/init.bliss.rc \
    device/htc/bliss/ramdisk/cwkeys:root/cwkeys \
    device/htc/bliss/ramdisk/ueventd.bliss.rc:root/ueventd.bliss.rc

# Some misc configeration files
PRODUCT_COPY_FILES += \
    device/htc/bliss/vold.fstab:system/etc/vold.fstab

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/bliss/bliss-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/bliss/overlay

LOCAL_PATH := device/htc/bliss
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_bliss
PRODUCT_DEVICE := bliss
