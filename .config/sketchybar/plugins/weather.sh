#!/bin/bash

# Fetch weather data: %x is condition code, %t is temperature
# Format example: "mm +25°C" or "o +25°C"
WEATHER_DATA=$(curl -s "wttr.in/?format=%x+%t")

if [ -z "$WEATHER_DATA" ]; then
  sketchybar --set $NAME label="?"
  exit 0
fi

CONDITION=$(echo "$WEATHER_DATA" | awk '{print $1}')
TEMP=$(echo "$WEATHER_DATA" | awk '{print $2}' | sed 's/+//')

case "$CONDITION" in
  "o") ICON="󰖙" ;;    # Sunny / Clear
  "m") ICON="󰖕" ;;    # Partly cloudy
  "mm") ICON="󰖐" ;;   # Cloudy
  "mmm") ICON="󰖐" ;;  # Very cloudy
  "f") ICON="󰖑" ;;    # Fog
  "r") ICON="󰖖" ;;    # Rain
  "rr") ICON="󰖖" ;;   # Heavy rain
  "s") ICON="󰖘" ;;    # Snow
  "ss") ICON="󰖘" ;;   # Heavy snow
  "t") ICON="󰖓" ;;    # Thunderstorm
  *) ICON="󰖙" ;;     # Default
esac

sketchybar --set $NAME label="$ICON  $TEMP"
