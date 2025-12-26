#!/bin/bash

sketchybar --add item ram right \
           --set ram \
           script="$PLUGIN_DIR/ram.sh" \
           update_freq=5 \
           display=1 \
           background.drawing=off \
           icon.color=$ORANGE \
           icon.font="JetBrainsMono Nerd Font:Bold:16.0" \
           label.color=$ORANGE \
           icon=􀫦
