include $(TOPDIR)/rules.mk

PKG_NAME:=usync-mqtt
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/blogic/usync-mqtt.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-11-19
PKG_SOURCE_VERSION:=805ce0c495158dd7ebe19cab3ff2b08fb616fbee

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/usync-mqtt
  SECTION:=usync
  CATEGORY:=uSync
  TITLE:=OpenWrt mqtt status daemon
  DEPENDS:=+libubox +libubus +libblobmsg-json +libmosquitto-ssl
endef

define Package/usync-mqtt/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/init.d
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/usync-mqtt $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/usync-mqtt $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/usync_stats.sh $(1)/usr/sbin
endef

$(eval $(call BuildPackage,usync-mqtt))
