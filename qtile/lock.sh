#!/bin/bash
declare -A backgrounds=(
    [1]="/usr/share/backgrounds/archlinux/mountain.jpg"
    [2]="/usr/share/backgrounds/archlinux/landscape.jpg"
    [3]="/usr/share/backgrounds/archlinux/reflected.jpg"
    [4]="/usr/share/backgrounds/archlinux/sunset.jpg"
    [5]="/usr/share/backgrounds/archlinux/svalbard.jpg"
)
num_keys=${#backgrounds[@]}
random_key=$(( RANDOM % num_keys + 1 ))
selected_background="${backgrounds[$random_key]}"
SCREEN_WIDTH=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f1)
SCREEN_HEIGHT=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f2)
TEMP_BG="/tmp/lockscreen.png"
magick "$selected_background" -resize "${SCREEN_WIDTH}x${SCREEN_HEIGHT}^" -gravity center -extent "${SCREEN_WIDTH}x${SCREEN_HEIGHT}" "$TEMP_BG"
i3lock -i "$TEMP_BG"
