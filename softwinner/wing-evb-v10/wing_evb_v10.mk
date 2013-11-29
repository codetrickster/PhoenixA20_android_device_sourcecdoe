# wing fpga product config

$(call inherit-product, device/softwinner/wing-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/wing-evb-v10/overlay

PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/modules/modules/nand.ko:root/nand.ko \
	device/softwinner/wing-evb-v10/modules/modules/disp.ko:root/disp.ko \
	device/softwinner/wing-evb-v10/modules/modules/lcd.ko:root/lcd.ko \
	device/softwinner/wing-evb-v10/modules/modules/hdmi.ko:root/hdmi.ko \

PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/kernel:kernel \
	device/softwinner/wing-evb-v10/recovery.fstab:recovery.fstab \

PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/ueventd.sun7i.rc:root/ueventd.sun7i.rc \
	device/softwinner/wing-evb-v10/init.sun7i.rc:root/init.sun7i.rc \
	device/softwinner/wing-evb-v10/init.sun7i.usb.rc:root/init.sun7i.usb.rc \
	device/softwinner/wing-evb-v10/camera.cfg:system/etc/camera.cfg \
	device/softwinner/wing-evb-v10/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml

#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
	device/softwinner/wing-evb-v10/tp.idc:system/usr/idc/tp.idc \
	device/softwinner/wing-evb-v10/gsensor.cfg:system/usr/gsensor.cfg

PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/initlogo.rle:root/initlogo.rle

PRODUCT_COPY_FILES += \
	device/softwinner/wing-evb-v10/vold.fstab:system/etc/vold.fstab
	
PRODUCT_PACKAGES += \
	TSCalibration2

# wifi & bt config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# rtl8723as bt fw and config
#PRODUCT_COPY_FILES += \
#	device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rlt8723a_chip_b_cut_bt40_fw.bin:system/etc/rlt8723a_chip_b_cut_bt40_fw.bin \
#	device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rtk8723_bt_config:system/etc/rtk8723_bt_config

# bcm40181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#	hardware/broadcom/wlan/firmware/bcm40181/nvram_gb9662.txt:system/vendor/modules/nvram_bcm40181.txt

# bcm40183 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_p2p.bin:system/vendor/modules/fw_bcm40183b2_p2p.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_apsta.bin:system/vendor/modules/fw_bcm40183b2_apsta.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2.bin:system/vendor/modules/fw_bcm40183b2.bin \
#	hardware/broadcom/wlan/firmware/bcm40183/nvram_gb9663.txt:system/vendor/modules/nvram_bcm40183.txt
#   hardware/broadcom/wlan/firmware/bcm40183/bcm40183b2.hcd:system/vendor/modules/bcm40183b2.hcd \

# ap6210 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#	hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#	hardware/broadcom/wlan/firmware/ap6210/nvram_ap6210.txt:system/vendor/modules/nvram_ap6210.txt \
#	hardware/broadcom/wlan/firmware/ap6210/bcm20710a1.hcd:system/vendor/modules/bcm20710a1.hcd
	
# ap6330 sdio wifi fw and nvram
PRODUCT_COPY_FILES += \
	hardware/broadcom/wlan/firmware/ap6330/fw_bcm40183b2_ag.bin:system/vendor/modules/fw_bcm40183b2_ag.bin \
	hardware/broadcom/wlan/firmware/ap6330/fw_bcm40183b2_ag_apsta.bin:system/vendor/modules/fw_bcm40183b2_ag_apsta.bin \
	hardware/broadcom/wlan/firmware/ap6330/fw_bcm40183b2_ag_p2p.bin:system/vendor/modules/fw_bcm40183b2_ag_p2p.bin \
	hardware/broadcom/wlan/firmware/ap6330/nvram_ap6330.txt:system/vendor/modules/nvram_ap6330.txt \
	hardware/broadcom/wlan/firmware/ap6330/bcm40183b2.hcd:system/vendor/modules/bcm40183b2.hcd \
# hardware/broadcom/wlan/firmware/ap6330/bd_addr.txt:system/etc/firmware/bd_addr.txt	
	
# Realtek Bluetooth add (2013.03.28)
PRODUCT_COPY_FILES += \
    device/softwinner/common/hardware/realtek/bluetooth/firmware/rtl8723au/rtk8723a:system/etc/firmware/rtk8723a \
    device/softwinner/common/hardware/realtek/bluetooth/firmware/rtl8723au/rtk8723_bt_config:system/etc/firmware/rtk8723_bt_config \
    device/softwinner/common/hardware/realtek/bluetooth/firmware/rtl8723au/rtk_btusb.ko:system/vendor/modules/rtk_btusb.ko \
    
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapsize=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapgrowthlimit=96m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=2m \
	dalvik.vm.heapmaxfree=8m \
	persist.sys.usb.config=mass_storage,adb \
	ro.property.tabletUI=true \
	ro.udisk.lable=WING \
	ro.product.firmware=v1.3 \

$(call inherit-product-if-exists, device/softwinner/wing-evb-v10/modules/modules.mk)

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := wing_evb_v10
PRODUCT_DEVICE := wing-evb-v10
PRODUCT_MODEL  := SoftwinerEvb

