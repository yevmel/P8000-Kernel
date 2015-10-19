#!/bin/bash

_KERNEL=$1
_RAMDISK=$2

mkbootimg \
    --kernel _KERNEL \
    --kernel_offset 0 \
    --ramdisk _RAMDISK \
    --ramdisk_offset 0x3F80000 \
    --pagesize 2048 \
    --second_offset 0xe80000 \
    --base 0x40080000 \
    --tags_offset 0xDF80000 \
    --cmdline bootopt=64S3,32N2,64N2 \
    --board Auxus_PRIME_201 \
    -o custom-boot.img
