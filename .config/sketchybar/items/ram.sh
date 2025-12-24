#!/bin/bash

sketchybar --add item ram right \
           --set ram \
           script="$PLUGIN_DIR/ram.sh" \
           update_freq=5 \
           display=1 \
           background.drawing=off \
           icon.color=$ORANGE \
           icon.font="iMWriting Nerd Font:Semibold:14.0" \
           label.color=$ORANGE \
           icon=􀫦
