#!/bin/bash

# Read the current input source
INPUT_SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources)

if echo "$INPUT_SOURCE" | grep -q "Vietnamese"; then
  LABEL="VI"
  COLOR=0xffed8796 # Red
else
  LABEL="EN"
  COLOR=0xff8bd5ca # Cyan
fi

sketchybar --set $NAME label="$LABEL" \
                       label.color=$COLOR \
                       background.border_color=$COLOR
