$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/pantech/pororo/pororo-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/pororo/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/pantech/pororo/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilt/time_daemon:system/bin/time_daemon

## Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    $(LOCAL_PATH)/config/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl.kl \
    $(LOCAL_PATH)/config/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
    $(LOCAL_PATH)/config/thermald.conf:system/etc/thermald.conf

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_pororo
PRODUCT_DEVICE := pororo
