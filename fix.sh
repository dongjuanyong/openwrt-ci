#!/bin/bash
cd openwrt/feeds/packages
patch -p1 < ../../../intel_aes_lib/packages.patch
mkdir -p net/dnscrypt-proxy2/patches
cp ../../../intel_aes_lib/999-add-tcp-fastopen-support.patch net/dnscrypt-proxy2/patches/999-add-tcp-fastopen-support.patch
cd ../luci
patch -p1 < ../../../intel_aes_lib/luci.patch
cd ../..
#patch -p1 < ../intel_aes_lib/lede.patch
cp ../.config .config
