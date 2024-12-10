#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/nitrogen-project/android_manifest.git -b 15 --git-lfs

git clone -b gen https://github.com/miteshx07/local_manifest.git .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
breakfast lavender
mka genesis
