#!/bin/bash

echo "backing up system files and critical programs..." ;

if [[ "$(id -u)" -ne 0 ]]; then
  echo "root access required"
  exit 1
fi

BACKUP_BASE_DIR="/cyber/backups/ass_cyberraven_mm04"

mkdir -p "${BACKUP_BASE_DIR}"

cd "${BACKUP_BASE_DIR}"
rm -rf exchange
mkdir exchange
cp /exchange/*.* exchange/

cd "${BACKUP_BASE_DIR}"
cp /reboot.sh .
cp /startup.sh .
cp /shutdown.sh .
cp /prepare_for_shutdown.sh .
cp /snail_test .

cd "${BACKUP_BASE_DIR}"
rm -rf root
mkdir root
cd root
cp /root/.bashrc .

cd "${BACKUP_BASE_DIR}"
rm -rf home
mkdir -p home/moya/.config/openbox
cd "${BACKUP_BASE_DIR}/home/moya/.config/openbox"
cp /home/moya/.config/openbox/* .

cd "${BACKUP_BASE_DIR}/home/moya/"
cp -R /home/moya/.ssh .
cp /home/moya/.bashrc .
cp /home/moya/.bash_aliases .
cp /home/moya/.profile .

cd "${BACKUP_BASE_DIR}"
rm -rf cyber
mkdir -p cyber/prog/asofterspace
cd cyber
cp /cyber/wellbeing_moya.ods .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assSecretary
cd assSecretary
cp /cyber/prog/asofterspace/assSecretary/*.sh .
cp -r /cyber/prog/asofterspace/assSecretary/server .
cp -r /cyber/prog/asofterspace/assSecretary/src .
cp -r /cyber/prog/asofterspace/assSecretary/upload .
mkdir config
cd config
cp -r /cyber/prog/asofterspace/assSecretary/config/database.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/locations_*.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/ltc_converted.stpu .
cp -r /cyber/prog/asofterspace/assSecretary/config/mission_control-archive_history.sh .
cp -r /cyber/prog/asofterspace/assSecretary/config/mission_control-empty.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/mission_control-historical.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/mission_control.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/quickdb.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/tasks.json .
cp -r /cyber/prog/asofterspace/assSecretary/config/task-stats.json .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assAccountant
cd assAccountant
cp /cyber/prog/asofterspace/assAccountant/*.sh .
cp -r /cyber/prog/asofterspace/assAccountant/data .
cp -r /cyber/prog/asofterspace/assAccountant/res .
cp -r /cyber/prog/asofterspace/assAccountant/server .
cp -r /cyber/prog/asofterspace/assAccountant/src .
mkdir config
cd config
cp -r /cyber/prog/asofterspace/assAccountant/config/database.cnf .
cp -r /cyber/prog/asofterspace/assAccountant/config/settings.cnf .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assErrorFinder
cd assErrorFinder
cp /cyber/prog/asofterspace/assErrorFinder/*.sh .
cp -r /cyber/prog/asofterspace/assErrorFinder/src .
cp -r /cyber/prog/asofterspace/assErrorFinder/server .
mkdir config
cd config
cp /cyber/prog/asofterspace/assErrorFinder/config/database.json .
cp /cyber/prog/asofterspace/assErrorFinder/config/words.txt .
cp -r /cyber/prog/asofterspace/assErrorFinder/config/tarot .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assBrowser
cd assBrowser
cp /cyber/prog/asofterspace/assBrowser/*.sh .
cp -r /cyber/prog/asofterspace/assBrowser/res .
cp -r /cyber/prog/asofterspace/assBrowser/src .
cp -r /cyber/prog/asofterspace/assBrowser/server .
mkdir config
cd config
cp /cyber/prog/asofterspace/assBrowser/config/database.json .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assCyberSnail
cd assCyberSnail
cp /cyber/prog/asofterspace/assCyberSnail/*.sh .
cp -r /cyber/prog/asofterspace/assCyberSnail/config .
cp -r /cyber/prog/asofterspace/assCyberSnail/server .
cp -r /cyber/prog/asofterspace/assCyberSnail/src .
cp -r /cyber/prog/asofterspace/assCyberSnail/res .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assEditor
cd assEditor
cp /cyber/prog/asofterspace/assEditor/*.sh .
cp -r /cyber/prog/asofterspace/assEditor/config .
cp -r /cyber/prog/asofterspace/assEditor/res .
cp -r /cyber/prog/asofterspace/assEditor/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assScripts
cd assScripts
cp /cyber/prog/asofterspace/assScripts/*.sh .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir MediaSorter
cd MediaSorter
cp /cyber/prog/asofterspace/MediaSorter/*.sh .
cp -r /cyber/prog/asofterspace/MediaSorter/config .
cp -r /cyber/prog/asofterspace/MediaSorter/output .
cp -r /cyber/prog/asofterspace/MediaSorter/server .
cp -r /cyber/prog/asofterspace/MediaSorter/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir MetaPlayer
cd MetaPlayer
cp /cyber/prog/asofterspace/MetaPlayer/*.sh .
cp /cyber/prog/asofterspace/MetaPlayer/MetaPlayer .
cp -r /cyber/prog/asofterspace/MetaPlayer/config .
cp -r /cyber/prog/asofterspace/MetaPlayer/res .
cp -r /cyber/prog/asofterspace/MetaPlayer/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir assTrainer
cd assTrainer
cp /cyber/prog/asofterspace/assTrainer/*.sh .
cp -r /cyber/prog/asofterspace/assTrainer/config .
cp -r /cyber/prog/asofterspace/assTrainer/server .
cp -r /cyber/prog/asofterspace/assTrainer/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir Picturizer
cd Picturizer
cp /cyber/prog/asofterspace/Picturizer/*.sh .
cp -r /cyber/prog/asofterspace/Picturizer/config .
cp -r /cyber/prog/asofterspace/Picturizer/res .
cp -r /cyber/prog/asofterspace/Picturizer/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir Toolbox-Java
cd Toolbox-Java
cp /cyber/prog/asofterspace/Toolbox-Java/*.sh .
cp -r /cyber/prog/asofterspace/Toolbox-Java/config .
cp -r /cyber/prog/asofterspace/Toolbox-Java/test .
cp -r /cyber/prog/asofterspace/Toolbox-Java/testdata .
cp -r /cyber/prog/asofterspace/Toolbox-Java/src .

cd "${BACKUP_BASE_DIR}/cyber/prog/asofterspace"
mkdir Toolbox-JavaScript
cd Toolbox-JavaScript
cp /cyber/prog/asofterspace/Toolbox-JavaScript/*.htm .
cp -r /cyber/prog/asofterspace/Toolbox-JavaScript/toolbox .


cd "${BACKUP_BASE_DIR}"
rm -rf mnt
mkdir -p mnt
cp /mnt/*.sh mnt/
mkdir -p mnt/ext
mkdir -p mnt/ext2
mkdir -p mnt/ext3
mkdir -p mnt/ext4
mkdir -p mnt/ext5
mkdir -p mnt/extcrypt
mkdir -p mnt/extcryptdata

cd "${BACKUP_BASE_DIR}"
rm -rf etc
mkdir -p etc/network
cd etc
cp -R /etc/mpv .
# for longterm copies of things like .bashrc see also /cyber/system/bash
cp -R /etc/skel .
cd network
cp -R /etc/network/saved .

cd "${BACKUP_BASE_DIR}"
mkdir -p usr/share/themes/Clearlooks/openbox-3
cp /usr/share/themes/Clearlooks/openbox-3/themerc usr/share/themes/Clearlooks/openbox-3/themerc
