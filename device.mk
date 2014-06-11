PRODUCT_AAPT_PREF_CONFIG := xlarge mdpi

$(call inherit-product-if-exists, vendor/acer/a510/a510-vendor.mk)

# USB config contains product-specific USB id
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.acer.usb.rc:root/init.acer.usb.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# So init files are copied properly in device_base.mk
PRODUCT_BOOTLOADER := picasso_m

# lvm files
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.picasso_m.rc:root/init.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.acer \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.picasso_m \
    device/acer/a510/prebuilt/ramdisk/lvm/etc/lvm.conf:root/lvm/etc/lvm.conf \
    device/acer/a510/prebuilt/ramdisk/lvm/sbin/lvm:root/lvm/sbin/lvm

# Inherit t30-common
$(call inherit-product, device/acer/t30-common/device_base.mk)
