#!/bin/bash

sketchybar --add item calendar right \
           --set calendar update_freq=30 \
                          background.drawing=off \
                          label.color=$MAGENTA \
                          script="$PLUGIN_DIR/calendar.sh"
