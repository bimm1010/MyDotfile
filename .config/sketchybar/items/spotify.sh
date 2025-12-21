#!/bin/bash

SPOTIFY_GREEN=0xff1db954

sketchybar --add item spotify right \
           --set spotify \
           script="$PLUGIN_DIR/spotify.sh" \
           update_freq=2 \
           background.drawing=off \
           icon.color=$SPOTIFY_GREEN \
           label.color=$SPOTIFY_GREEN \
           icon.font="MesloLGS Nerd Font Mono:Bold:24.0" \
           icon.y_offset=1 \
           icon= \
           drawing=off \
           --subscribe spotify media_change
