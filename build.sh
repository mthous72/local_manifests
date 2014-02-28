#!/bin/bash
cp frameworks/native/data/etc/* frameworks/base/data/etc
. build/envsetup.sh
lunch full_nuclear_inet-userdebug
mka
