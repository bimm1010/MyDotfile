#!/bin/bash

sketchybar --add item input right \
           --set input update_freq=2 \
                       icon=kb \
                       icon.padding_right=5 \
                       script="$PLUGIN_DIR/input.sh" \
                       padding_left=5 
