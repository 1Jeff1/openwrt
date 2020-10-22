include $(TOPDIR)/rules.mk

PKG_NAME:=usync-client
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/blogic/usync-client.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-11-19
PKG_SOURCE_VERSION:=f758e30f4ead6f4061a102aca85b180b8d167a01

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/usync-client
  SECTION:=usync
  CATEGORY:=uSync
  TITLE:=OpenWrt cloud websocket client
  DEPENDS:=+usync-jsonschema +usync-schema +usync-wifi \
  	   +utpl +utpl-mod-fs +utpl-mod-ubus +utpl-mod-uci \
	   +libubox +libwebsockets-openssl +libblobmsg-json +libubus
endef

define Package/usync-client/conffiles
/etc/usync/
/etc/config-shadow/
endef

define Package/usync-client/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/{usync,config,init.d,uci-defaults}
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/usync $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/usync_*.sh $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/usync.init $(1)/etc/init.d/usync
	$(INSTALL_DATA) ./files/usync.config $(1)/etc/config/usync
	$(INSTALL_DATA) ./files/zzz-usync $(1)/etc/uci-defaults/
endef

$(eval $(call BuildPackage,usync-client))
