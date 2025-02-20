#!/bin/bash

if [[ "$(id -u)" -ne 0 ]]; then
  echo "root access required"
  exit 1
fi

mkdir -p /cyber/prog/asofterspace/assScripts/backup
cd /cyber/prog/asofterspace/assScripts/backup

cp /reboot.sh .
cp /startup.sh .
cp /shutdown.sh .
cp /snail_test .
cp /home/moya/.bashrc moya.bashrc
cp /root/.bashrc root.bashrc

rm -rf .config
mkdir -p .config/openbox
cp /home/moya/.config/openbox/* .config/openbox/

rm -rf .mnt
mkdir -p mnt
cp /mnt/mountallext.sh mnt/
cp /mnt/umountallext.sh mnt/
mkdir -p mnt/ext
mkdir -p mnt/ext2
mkdir -p mnt/ext3
mkdir -p mnt/ext4

rm -rf etc
mkdir -p etc/network
cd etc/network
cp -R /etc/network/saved .
cd ../..

mkdir -p usr/share/themes/Clearlooks/openbox-3
cp /usr/share/themes/Clearlooks/openbox-3/themerc usr/share/themes/Clearlooks/openbox-3/themerc
