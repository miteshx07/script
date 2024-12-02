#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 14 --git-lfs
#echo "=================="
echo "Repo init success"
#echo "=================="

# Clone local_manifests repository
git clone -b sakura https://github.com/miteshx07/local_manifests .repo/local_manifests
#echo "============================"
echo "Local manifest clone success"
#echo "============================"

# Sync the repositories
/opt/crave/resync.sh
echo "============================"

# Set up build environment
. build/envsetup.sh
echo "====== Envsetup Done ======="

export SAKURA_MAINTAINER=MiTEsH
export SAKURA_BUILD_TYPE=vanilla
export SAKURA_BUILD_TYPE=VANILLA
export TARGET_BOOT_ANIMATION_RES=720
export TARGET_RELEASE=ap2a
export TZ=Asia/Dhaka
echo "======== Export Done ======="

# Lunch
breakfast lavender
echo "============="

# Build rom
#mka bacon
