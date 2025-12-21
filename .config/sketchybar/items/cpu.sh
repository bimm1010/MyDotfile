#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      icon.font="iMWriting Nerd Font:Semibold:14.0" \
                      background.drawing=off \
                      icon.color=$YELLOW \
                      label.color=$YELLOW \
                      script="$PLUGIN_DIR/cpu.sh"
