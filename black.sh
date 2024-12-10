#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/Black-Iron-Project/manifest -b v15 --git-lfs

git clone -b black https://github.com/miteshx07/local_manifests .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch nitrogen_lavender-userdebug
#make -j$(nproc --all)
