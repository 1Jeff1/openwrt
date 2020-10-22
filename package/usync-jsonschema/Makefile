include $(TOPDIR)/rules.mk

PKG_NAME:=usync-jsonschema
PKG_RELEASE:=1

PKG_SOURCE_URL=https://github.com/blogic/usync-jsonschema.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_DATE:=2022-11-19
PKG_SOURCE_VERSION:=98765ffecc5f6ec82ca7023a8ab6f036b359fe38

PKG_MAINTAINER:=John Crispin <john@phrozen.org>
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/usync-jsonschema
  SECTION:=usync
  CATEGORY:=uSync
  TITLE:=JSON Schema Validator
  DEPENDS:=+libjson-c
endef

define Package/usync-jsonschema/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/jsonschema $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,usync-jsonschema))
