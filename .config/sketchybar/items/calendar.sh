#!/bin/bash

sketchybar --add item calendar center \
           --set calendar update_freq=1 \
                          display=1 \
                          background.drawing=off \
                          label.color=$MAGENTA \
                          script="$PLUGIN_DIR/calendar.sh"
