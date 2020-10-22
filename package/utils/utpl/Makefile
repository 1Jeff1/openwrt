#
# Copyright (C) 2020 Jo-Philipp Wich <jo@mein.io>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=utpl
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/jow-/utpl.git
PKG_SOURCE_DATE:=2020-10-22
PKG_SOURCE_VERSION:=c447e58ebf3b04f129009f642d5d1be4ca8cee92
#181fde5208efa0d45126327dd0c4197e1a63fd90
#c447e58ebf3b04f129009f642d5d1be4ca8cee92
PKG_MIRROR_HASH:=
PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>
PKG_LICENSE:=ISC

PKG_ASLR_PIE_REGULAR:=1
PKG_BUILD_DEPENDS = ustream-ssl
PKG_CONFIG_DEPENDS:= CONFIG_utpl_lua

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(INCLUDE_DIR)/version.mk

define Package/utpl/default
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=utpl - Tiny template language
endef

define Package/utpl
  $(Package/utpl/default)
  DEPENDS:=+libjson-c
endef

define Package/utpl/description
 utpl is a tiny script interpreter featuring an ECMAScript oriented
 script language and Jinja-inspired templating.
endef


define Package/utpl-mod-fs
  $(Package/utpl/default)
  TITLE+= (filesystem module)
  DEPENDS:=utpl
endef

define Package/utpl-mod-fs/description
 The filesystem plugin module allows interaction with the local file system.
endef


define Package/utpl-mod-math
  $(Package/utpl/default)
  TITLE+= (math module)
  DEPENDS:=utpl
endef

define Package/utpl-mod-math/description
 The math plugin provides access to various <math.h> procedures.
endef


define Package/utpl-mod-ubus
  $(Package/utpl/default)
  TITLE+= (ubus module)
  DEPENDS:=utpl +libubus +libblobmsg-json
endef

define Package/utpl-mod-ubus/description
 The ubus module allows utpl template scripts to enumerate and invoke ubus
 procedures.
endef


define Package/utpl-mod-uci
  $(Package/utpl/default)
  TITLE+= (uci module)
  DEPENDS:=utpl +libuci
endef

define Package/utpl-mod-uci/description
 The uci module allows templates to read and modify uci configuration.
endef


define Package/utpl/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/utpl $(1)/usr/bin/utpl
endef

define Package/utpl-mod-fs/install
	$(INSTALL_DIR) $(1)/usr/lib/utpl
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lib/fs.so $(1)/usr/lib/utpl/
endef

define Package/utpl-mod-math/install
	$(INSTALL_DIR) $(1)/usr/lib/utpl
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lib/math.so $(1)/usr/lib/utpl/
endef

define Package/utpl-mod-ubus/install
	$(INSTALL_DIR) $(1)/usr/lib/utpl
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lib/ubus.so $(1)/usr/lib/utpl/
endef

define Package/utpl-mod-uci/install
	$(INSTALL_DIR) $(1)/usr/lib/utpl
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/lib/uci.so $(1)/usr/lib/utpl/
endef


$(eval $(call BuildPackage,utpl))
$(eval $(call BuildPackage,utpl-mod-fs))
$(eval $(call BuildPackage,utpl-mod-math))
$(eval $(call BuildPackage,utpl-mod-ubus))
$(eval $(call BuildPackage,utpl-mod-uci))
