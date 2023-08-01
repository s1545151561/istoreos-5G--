#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改openwrt登陆地址,把下面的 10.0.0.1 修改成你想要的就可以了
sed -i 's/192.168.100.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 修改 根目录(Overlay) 容量
sed -i 's/CONFIG_TARGET_ROOTFS_PARTSIZE=256/CONFIG_TARGET_ROOTFS_PARTSIZE=2048/' .config

# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate

# ttyd 自动登录
# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${GITHUB_WORKSPACE}/openwrt/package/feeds/packages/ttyd/files/ttyd.config

# 添加自定义软件包
# echo '
# CONFIG_PACKAGE_luci-app-mosdns=y
# CONFIG_PACKAGE_luci-app-adguardhome=y
# CONFIG_PACKAGE_luci-app-openclash=y
# ' >> .config

# 移除 ddns 和 ddnsto
sed -i '/ddns/s/^/#/' >> .config

# 移除 istore os 页面
sed -i '/quickstart/s/^/#/' >> .config

# 移除 易有云
sed -i '/linkease/s/^/#/' >> .config

# 移除 uhttpd
sed -i '/uhttpd/s/^/#/' >> .config
sed -i '/libiwinfo-lua/s/^/#/' >> .config
sed -i 's/CONFIG_PACKAGE_luci-ssl-openssl=y/CONFIG_PACKAGE_luci-ssl-openssl=n/' .config

# 移除 bootstrap 主题
sed -i 's/CONFIG_PACKAGE_luci-theme-bootstrap=y/CONFIG_PACKAGE_luci-theme-bootstrap=n/' .config

# 添加 ddns-go
echo "
CONFIG_PACKAGE_luci-app-ddns-go=y
CONFIG_PACKAGE_luci-i18n-ddns-go-zh-cn=y
" >> .config

# 添加 文件管理
echo "
CONFIG_PACKAGE_luci-app-filebrowser=y
CONFIG_PACKAGE_luci-i18n-filebrowser-zh-cn=y
" >> .config

# 添加 关机
echo "
CONFIG_PACKAGE_luci-app-poweroff=y
CONFIG_PACKAGE_luci-i18n-poweroff-zh-cn=y
" >> .config

# 添加 nginx
echo '
# nginx
CONFIG_NGINX_DAV=y
CONFIG_NGINX_HTTP_ACCESS=y
CONFIG_NGINX_HTTP_AUTH_BASIC=y
CONFIG_NGINX_HTTP_AUTOINDEX=y
CONFIG_NGINX_HTTP_BROWSER=y
CONFIG_NGINX_HTTP_CACHE=y
CONFIG_NGINX_HTTP_CHARSET=y
CONFIG_NGINX_HTTP_EMPTY_GIF=y
CONFIG_NGINX_HTTP_FASTCGI=y
CONFIG_NGINX_HTTP_GEO=y
CONFIG_NGINX_HTTP_GZIP=y
CONFIG_NGINX_HTTP_GZIP_STATIC=y
CONFIG_NGINX_HTTP_LIMIT_CONN=y
CONFIG_NGINX_HTTP_LIMIT_REQ=y
CONFIG_NGINX_HTTP_MAP=y
CONFIG_NGINX_HTTP_MEMCACHED=y
CONFIG_NGINX_HTTP_PROXY=y
CONFIG_NGINX_HTTP_REFERER=y
CONFIG_NGINX_HTTP_REWRITE=y
CONFIG_NGINX_HTTP_SCGI=y
CONFIG_NGINX_HTTP_SPLIT_CLIENTS=y
CONFIG_NGINX_HTTP_SSI=y
CONFIG_NGINX_HTTP_UPSTREAM_HASH=y
CONFIG_NGINX_HTTP_UPSTREAM_IP_HASH=y
CONFIG_NGINX_HTTP_UPSTREAM_KEEPALIVE=y
CONFIG_NGINX_HTTP_UPSTREAM_LEAST_CONN=y
CONFIG_NGINX_HTTP_USERID=y
CONFIG_NGINX_HTTP_UWSGI=y
CONFIG_NGINX_HTTP_V2=y
CONFIG_NGINX_PCRE=y

CONFIG_PACKAGE_luci-ssl-nginx=y
CONFIG_PACKAGE_musl-fts=m
CONFIG_PACKAGE_my-default-settings=y
CONFIG_PACKAGE_nginx=y
CONFIG_PACKAGE_nginx-mod-luci=y
CONFIG_PACKAGE_nginx-mod-luci-ssl=y
CONFIG_PACKAGE_nginx-mod-ubus=y
CONFIG_PACKAGE_nginx-ssl=y
CONFIG_PACKAGE_nginx-ssl-util=y
CONFIG_PACKAGE_nginx-util=y
CONFIG_PACKAGE_objdump=m
# CONFIG_PACKAGE_openwrt-keyring is not set
CONFIG_PACKAGE_perf=m
# CONFIG_PACKAGE_usign is not set
CONFIG_PACKAGE_uwsgi=y
CONFIG_PACKAGE_uwsgi-cgi-plugin=y
CONFIG_PACKAGE_uwsgi-luci-support=y
CONFIG_PACKAGE_uwsgi-syslog-plugin=y
' >> .config