#!/bin/bash

sketchybar --add item user right \
           --set user  background.drawing=off \
                       icon="" \
                       icon.color=0xffc6a0f6 \
                       label.color=0xffc6a0f6 \
                       label="$USER" \
                       update_freq=0
