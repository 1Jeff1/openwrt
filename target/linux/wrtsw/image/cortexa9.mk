#
# Copyright (C) 2012-2016 OpenWrt.org
# Copyright (C) 2016 LEDE-project.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Device/linksys
  $(Device/NAND-128K)
  DEVICE_VENDOR := Linksys
  DEVICE_PACKAGES := kmod-ata-ahci kmod-ata-core kmod-ata-marvell-sata kmod-mwlwifi kmod-scsi-core kmod-scsi-generic swconfig wpad-basic
  IMAGES += factory.img
  KERNEL_SIZE := 6144k
endef

define Device/linksys_wrt1200ac
  $(call Device/linksys)
  DEVICE_MODEL := WRT1200AC
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Caiman
  DEVICE_DTS := armada-385-linksys-caiman
  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
  SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
endef
TARGET_DEVICES += linksys_wrt1200ac

define Device/linksys_wrt1900acs
  $(call Device/linksys)
  DEVICE_MODEL := WRT1900ACS
  DEVICE_VARIANT := v1
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := WRT1900ACS
  DEVICE_ALT0_VARIANT := v2
  DEVICE_ALT1_VENDOR := Linksys
  DEVICE_ALT1_MODEL := Shelby
  DEVICE_DTS := armada-385-linksys-shelby
  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
  SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
endef
TARGET_DEVICES += linksys_wrt1900acs

define Device/linksys_wrt1900ac
  $(call Device/linksys)
  DEVICE_MODEL := WRT1900AC
  DEVICE_VARIANT := v1
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Mamba
  DEVICE_DTS := armada-xp-linksys-mamba
  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
  KERNEL_SIZE := 3072k
  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
endef
TARGET_DEVICES += linksys_wrt1900ac

define Device/linksys_wrt1900acv2
  $(call Device/linksys)
  DEVICE_MODEL := WRT1900AC
  DEVICE_VARIANT := v2
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Cobra
  DEVICE_DTS := armada-385-linksys-cobra
  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
endef
TARGET_DEVICES += linksys_wrt1900acv2

define Device/linksys_wrt3200acm
  $(call Device/linksys)
  DEVICE_MODEL := WRT3200ACM
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Rango
  DEVICE_DTS := armada-385-linksys-rango
  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
endef
TARGET_DEVICES += linksys_wrt3200acm

define Device/linksys_wrt32x
  $(call Device/linksys)
  DEVICE_MODEL := WRT32X
  DEVICE_ALT0_VENDOR := Linksys
  DEVICE_ALT0_MODEL := Venom
  DEVICE_DTS := armada-385-linksys-venom
  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
  KERNEL_SIZE := 3072k
  KERNEL := kernel-bin | append-dtb
  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
endef
TARGET_DEVICES += linksys_wrt32x
