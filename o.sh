#!/bin/bash

rm -rf .repo/local_manifests

repo init -u https://github.com/omnirom/android.git -b android-14.0 --git-lfs

git clone -b o https://github.com/miteshx07/local_manifests.git .repo/local_manifests

/opt/crave/resync.sh
