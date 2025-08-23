#!/bin/bash

if pgrep -x "polybar" > /dev/null; then
    pkill polybar
else
    polybar example &
    polybar example2 &
fi
