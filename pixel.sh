#!/bin/bash

. build/envsetup.sh

lunch aosp_larry-ap2a-userdebug

mka bacon
