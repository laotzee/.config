#!/bin/bash

# Unique identifier for the notification (use a numeric ID)
NOTIFY_ID=12345  # You can use any integer here

# Log the execution
echo "Volume script executed at $(date)" > /tmp/volume_control.log

# Get the current volume
CURRENT_VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')
echo "Current Volume: $CURRENT_VOLUME" >> /tmp/volume_control.log

# Change volume
if [ "$1" == "up" ]; then
    # Calculate new volume
    NEW_VOLUME=$((CURRENT_VOLUME + 5))
    echo "New Volume (before check): $NEW_VOLUME" >> /tmp/volume_control.log
    # Set volume only if new volume is less than or equal to 90%
    if [ "$NEW_VOLUME" -le 90 ]; then
        pactl set-sink-volume @DEFAULT_SINK@ +5%
    fi
    # Get the updated volume after setting
    VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
    echo "Updated Volume: $VOLUME" >> /tmp/volume_control.log
    notify-send -r "$NOTIFY_ID" "Volume" "$VOLUME"
elif [ "$1" == "down" ]; then
    pactl set-sink-volume @DEFAULT_SINK@ -5%
    # Get the updated volume after setting
    VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')
    echo "Updated Volume: $VOLUME" >> /tmp/volume_control.log
    notify-send -r "$NOTIFY_ID" "Volume" "$VOLUME"
fi


