#!/bin/bash

#rm -rf .repo/local_manifests

#repo init --depth=1 -u https://github.com/GenesisOS/manifest.git -b verve --git-lfs

#git clone -b gen https://github.com/miteshx07/local_manifest.git .repo/local_manifests

#/opt/crave/resync.sh

source build/envsetup.sh
breakfast lavender
mka genesis
