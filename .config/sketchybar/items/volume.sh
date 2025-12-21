#!/bin/bash

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                        background.drawing=off \
                        icon.color=$BLUE \
                        icon.font="iMWriting Nerd Font:Semibold:14.0" \
                        label.color=$BLUE \
           --subscribe volume volume_change 
