include $(TOPDIR)/rules.mk

PKG_NAME:=usync-schema
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/blogic/usync-schema.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-11-19
PKG_SOURCE_VERSION:=89e079afebb9c2f3fbaa9c24504091bc50dcd2b1

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/usync-schema
  SECTION:=usync
  CATEGORY:=uSync
  TITLE:=OpenWrt cloud schema
endef

define Build/Compile

endef

define Package/usync-schema/install
	$(INSTALL_DIR) $(1)/usr/share/usync
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/usync.schema.json $(1)/usr/share/usync
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/sys/*.tpl $(1)/usr/share/usync
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/cmd/*.tpl $(1)/usr/share/usync
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/cfg/*.tpl $(1)/usr/share/usync
endef

$(eval $(call BuildPackage,usync-schema))
