#!/bin/bash

sketchybar --add item user right \
           --set user  display=1 \
                       background.drawing=off \
                       icon="" \
                       icon.color=0xffc6a0f6 \
                       label.color=0xffc6a0f6 \
                       label="$USER" \
                       update_freq=0
