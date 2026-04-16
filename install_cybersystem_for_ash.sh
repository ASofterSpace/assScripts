#!/bin/bash

TO="/home/ash/Desktop/puuters/programs/"
FROM="$(pwd)"

echo "call this FROM THE STICK directly!"
echo "if you are calling this inside the stick directory, yayyy, press ENTER - if not, abandon!"
read

echo ""
echo "copying everything from the stick to ${TO}..."

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
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assSecretary"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assAccountant"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assErrorFinder"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p config
cd config
rm -rf tarot
cp -r "${FROM}/${CUR}/tarot" .
cd ..
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assTrainer"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assWorkbench"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .
mkdir -p server
cd server
rm *htm
rm *js
rm *css
rm webengine.json
cp -r "${FROM}/${CUR}/server/"*htm .
cp -r "${FROM}/${CUR}/server/"*js .
cp -r "${FROM}/${CUR}/server/"*css .
cp -r "${FROM}/${CUR}/server/webengine.json" .

CUR="assEditor"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .

CUR="virtualEmployees"
echo "copying ${CUR}..."
cd "${TO}"
rm -rf "${CUR}"
cp -r "${FROM}/${CUR}" .

CUR="Picturizer"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .

CUR="MediaSorter"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .

CUR="MetaPlayer"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .

CUR="BackupGenerator"
echo "copying ${CUR}..."
mkdir -p "${TO}/${CUR}"
cd "${TO}/${CUR}"
rm -rf src
cp -r "${FROM}/${CUR}/src" .
rm *.sh
cp "${FROM}/${CUR}/"*.sh .

cd "${TO}"


echo "stopping old cyber mates..."

cd "${TO}"

./stopCyberMates.sh


echo "building new cyber mates..."

CUR="assBrowser"
cd "${TO}/${CUR}"
./build.sh

CUR="assSecretary"
cd "${TO}/${CUR}"
./build.sh

CUR="assAccountant"
cd "${TO}/${CUR}"
./build.sh

CUR="assErrorFinder"
cd "${TO}/${CUR}"
./build.sh

CUR="assTrainer"
cd "${TO}/${CUR}"
./build.sh

CUR="assWorkbench"
cd "${TO}/${CUR}"
./build.sh

CUR="assEditor"
cd "${TO}/${CUR}"
./build.sh

CUR="Picturizer"
cd "${TO}/${CUR}"
./build.sh

CUR="MediaSorter"
cd "${TO}/${CUR}"
./build.sh

CUR="MetaPlayer"
cd "${TO}/${CUR}"
./build.sh

CUR="BackupGenerator"
cd "${TO}/${CUR}"
./build.sh


echo "starting new cyber mates..."

./startCyberMates.sh
