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
cp /home/moya/.bashrc moya.bashrc
cp /root/.bashrc root.bashrc

mkdir -p mnt
cd mnt
cp /mnt/mountallext.sh .
cp /mnt/umountallext.sh .
mkdir -p ext
mkdir -p ext2
mkdir -p ext3
mkdir -p ext4
cd ..

rm -rf etc
mkdir -p etc
cd etc
cp -R /etc/network .
cd ..
