#!/bin/bash

# Read the current input source
INPUT_SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources)

if echo "$INPUT_SOURCE" | grep -q "Vietnamese"; then
  LABEL="Vietnamese"
else
  LABEL="English"
fi

sketchybar --set $NAME label="$LABEL"
