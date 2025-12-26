#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                        background.drawing=off \
                        icon.color=$BLUE \
                        icon.font="JetBrainsMono Nerd Font:Bold:16.0" \
                        label.color=$BLUE \
           --subscribe volume volume_change 
