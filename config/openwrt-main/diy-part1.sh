#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/openwrt/openwrt / Branch: main
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages.git' >> ./feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small.git' >> ./feeds.conf.default
echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman.git' >> ./feeds.conf.default
echo 'src-git diskman https://github.com/lisaac/luci-app-diskman.git' >> ./feeds.conf.default
# echo 'src-git haiibo https://github.com/haiibo/openwrt-packages.git' >> ./feeds.conf.default

# other
# rm -rf package/utils/{ucode,fbtest}

