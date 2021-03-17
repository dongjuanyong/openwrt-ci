#!/bin/bash
cd openwrt/feeds/packages
rm -rf net/xray-core sound/shairport-sync/patches/010-no-cxx.patch
ln -s ../../helloworld/xray-core net/xray-core
sed -i '/bin\/v2ray/d' net/xray-core/Makefile
patch -p1 < ../../../intel_aes_lib/packages.patch
cp ../../../intel_aes_lib/coremark utils/coremark/coremark
cp ../../../intel_aes_lib/coremark.sh utils/coremark/coremark.sh
cd ../luci
patch -p1 < ../../../intel_aes_lib/luci.patch
cd ../..
#patch -p1 < ../intel_aes_lib/lede.patch
cp ../.config .config
