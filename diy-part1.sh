#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
git clone --depth=1 -b master https://github.com/vernesong/OpenClash package/OpenClash
git clone https://github.com/xiaorouji/openwrt-passwall.git package/xiaorouji
svn export https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/xiaorouji/luci-app-passwall2
#echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# Lienol/openwrt-package
# sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/xiaorouji/openwrt-package' feeds.conf.default
