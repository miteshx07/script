#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/nitrogen-project/android_manifest.git -b 15 --git-lfs

git clone -b nitro15 https://github.com/miteshx07/local_manifests .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch nitrogen_lavender-userdebug
#make -j$(nproc --all)
