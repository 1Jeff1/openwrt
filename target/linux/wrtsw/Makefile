#
# Copyright (C) 2012-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

BOARD:=wrtsw
BOARDNAME:=Linksys WRT (Switch Config)
FEATURES:=fpu usb pci pcie gpio nand squashfs ramdisk boot-part rootfs-part
SUBTARGETS:=cortexa9

KERNEL_PATCHVER:=5.4
KERNEL_TESTING_PATCHVER:=5.4

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += uboot-envtools kmod-gpio-button-hotplug

$(eval $(call BuildTarget))
