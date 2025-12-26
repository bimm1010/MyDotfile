#!/bin/bash

sketchybar --add item input right \
           --set input update_freq=2 \
                       display=1 \
                       icon.drawing=off \
                       background.drawing=on \
                       background.color=0x00000000 \
                       background.border_width=1.5 \
                       background.border_color=$WHITE \
                       background.corner_radius=4 \
                       background.height=20 \
                       label.color=$WHITE \
                       label.font="JetBrainsMono Nerd Font:Bold:16.0" \
                       label.y_offset=0 \
                       label.padding_left=5 \
                       label.padding_right=5 \
                       script="$PLUGIN_DIR/input.sh" \
                       padding_left=5 
