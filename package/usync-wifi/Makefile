include $(TOPDIR)/rules.mk

PKG_NAME:=usync-wifi
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/blogic/usync-wifi.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-11-19
PKG_SOURCE_VERSION:=7f03fd0c9373ffbc61d07cb07fea54298939b927

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/usync-wifi
  SECTION:=usync
  CATEGORY:=uSync
  TITLE:=OpenWrt wifi status daemon
  DEPENDS:=+libubox +libubus +libnl-tiny
endef

TARGET_CFLAGS += \
	-I$(STAGING_DIR)/usr/include \
	-I$(STAGING_DIR)/usr/include/libnl-tiny

define Package/usync-wifi/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/usync-wifi $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/usync-wifi $(1)/etc/init.d/
endef

$(eval $(call BuildPackage,usync-wifi))
