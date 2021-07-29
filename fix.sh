#!/bin/bash
cd openwrt/feeds/packages
ln -s ../../helloworld/xray-core net/xray-core
sed -i '/bin\/v2ray/d' net/xray-core/Makefile
patch -p1 < ../../../patches/packages.patch
cp ../../../patches/coremark utils/coremark/coremark
cp ../../../patches/coremark.sh utils/coremark/coremark.sh
cd ../luci
patch -p1 < ../../../patches/luci.patch
cd ../..
#patch -p1 < ../patches/lede.patch
cp ../.config .config
