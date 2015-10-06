#!/usr/bin/env bash

make     ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- p8000_defconfig
make -j4 ARCH=arm64 CROSS_COMPILE=aarch64-linux-android-

