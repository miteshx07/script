#!/bin/bash

rm -rf .repo/local_manifests

repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 15 -g default,-mips,-darwin,-notdefault

git clone -b X https://github.com/miteshx07/local_manifests.git .repo/local_manifests

/opt/crave/resync.sh

. build/envsetup.sh
lunch infinity_lavender-user
mka bacon
