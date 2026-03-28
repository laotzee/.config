#!/bin/bash

CURRENT_VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]+(?=%)' | head -n 1)

if [ "$1" == "up" ]; then
    if [ "$CURRENT_VOL" -lt 85 ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    fi
elif [ "$1" == "down" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -5%
fi

killall -USR1 i3status
