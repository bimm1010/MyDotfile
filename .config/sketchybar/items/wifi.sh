#!/bin/bash

sketchybar --add item wifi right \
           --set wifi \
           script="$PLUGIN_DIR/wifi.sh" \
           update_freq=5 \
           background.drawing=off \
           icon.color=$GREEN \
           label.color=$GREEN \
           --subscribe wifi wifi_change
