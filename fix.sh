#!/bin/bash
cd openwrt/feeds/packages
patch -p1 < ../../../intel_aes_lib/packages.patch
cp ../../../intel_aes_lib/coremark utils/coremark/coremark
cp ../../../intel_aes_lib/coremark.sh utils/coremark/coremark.sh
cd ../luci
patch -p1 < ../../../intel_aes_lib/luci.patch
cd ../..
#patch -p1 < ../intel_aes_lib/lede.patch
cp ../.config .config
