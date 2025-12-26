#!/bin/bash

SPOTIFY_GREEN=0xff1db954

sketchybar --add item spotify right \
           --set spotify \
           display=1 \
           script="$PLUGIN_DIR/spotify.sh" \
           update_freq=2 \
           background.drawing=off \
           icon.color=$SPOTIFY_GREEN \
           label.color=$SPOTIFY_GREEN \
           icon.font="JetBrainsMono Nerd Font:Bold:16.0" \
           icon.y_offset=1 \
           icon= \
           drawing=off \
           --subscribe spotify media_change
