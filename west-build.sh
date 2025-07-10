#!/bin/bash
set -e

west build -p=always -s zmk/app -d build/left -b nice_nano_v2 -S studio-rpc-usb-uart -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="sofle_left" -DCONFIG_ZMK_STUDIO=y
cp build/left/zephyr/zmk.uf2 "./output/left.uf2"

west build -p=always -s zmk/app -d build/right -b nice_nano_v2 -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="sofle_right"
cp build/right/zephyr/zmk.uf2 "./output/right.uf2"

west build -p=always -s zmk/app -d build/reset -b nice_nano_v2 -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="settings_reset"
cp build/reset/zephyr/zmk.uf2 "./output/reset.uf2"
