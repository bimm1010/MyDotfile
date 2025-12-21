#!/bin/bash

sketchybar --add item input right \
           --set input update_freq=2 \
                       icon=kb \
                       background.drawing=off \
                       icon.color=$WHITE \
                       label.color=$WHITE \
                       icon.padding_right=5 \
                       script="$PLUGIN_DIR/input.sh" \
                       padding_left=5 
