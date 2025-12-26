#!/bin/bash

sketchybar --add item cpu_temp right \
           --set cpu_temp update_freq=5 \
                          display=1 \
                          icon=􀇬 \
                          icon.font="sketchybar-app-font:Regular:16.0" \
                          background.drawing=off \
                          icon.color=0xffff6550 \
                          label.color=0xffff6550 \
                          script="$PLUGIN_DIR/cpu_temp.sh"
