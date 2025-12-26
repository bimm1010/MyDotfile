#!/bin/bash

sketchybar --add item weather center \
           --set weather update_freq=1800 \
                         display=1 \
                         background.drawing=off \
                         label.color=$YELLOW \
                         label.y_offset=0 \
                         icon.drawing=off \
                         script="$PLUGIN_DIR/weather.sh"

