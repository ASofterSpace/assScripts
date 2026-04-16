#!/bin/bash

FROM=/cyber/prog/asofterspace/
TO=/mnt/ext/

echo "copying cyber system for Ash from ${FROM} to ${TO}..."

cp install_cybersystem_for_ash.sh "${TO}/"

CUR="Toolbox-Java"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
cp -r "${FROM}/${CUR}" .

CUR="Toolbox-JavaScript"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
cp -r "${FROM}/${CUR}" .

CUR="assBrowser"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assSecretary"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assAccountant"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assErrorFinder"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir config
cd config
cp -r "${FROM}/${CUR}/config/tarot" .
cd ..
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assTrainer"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assWorkbench"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .
mkdir server
cd server
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .
cd ..

CUR="assEditor"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .

CUR="virtualEmployees"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
cp -r "${FROM}/${CUR}" .

CUR="Picturizer"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .

CUR="MediaSorter"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .

CUR="MetaPlayer"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .

CUR="BackupGenerator"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
mkdir "${CUR}"
cd "${CUR}"
cp -r "${FROM}/${CUR}/src" .
cp "${FROM}/${CUR}/"*.sh .

cd "${TO}"
