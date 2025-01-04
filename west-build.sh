#!/bin/bash
west build -p=always -s zmk/app -d build/left -b nice_nano_v2 -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="sofle_left" -DCONFIG_ZMK_STUDIO=y
cp build/left/zephyr/zmk.uf2 "./output/left.uf2"

west build -p=always -s zmk/app -d build/right -b nice_nano_v2 -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="sofle_right" -DCONFIG_ZMK_STUDIO=y
cp build/right/zephyr/zmk.uf2 "./output/right.uf2"
