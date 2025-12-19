#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"
if [ "$STATE" = "playing" ]; then
  APP="$(echo "$INFO" | jq -r '.app')"
  MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
  
  if [ "$APP" = "Spotify" ]; then
    ICON=􁰉
  else
    ICON=􀑪
  fi
  
  sketchybar --set $NAME label="$MEDIA" icon=$ICON drawing=on
else
  sketchybar --set $NAME drawing=off
fi
