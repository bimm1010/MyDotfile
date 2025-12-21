#!/bin/bash

# Kiểm tra trạng thái Spotify
# Sử dụng try/catch logic đơn giản bằng check exit code
STATE=$(osascript -e 'tell application "Spotify" to player state' 2>/dev/null)

if [ "$STATE" = "playing" ]; then
  TRACK=$(osascript -e 'tell application "Spotify" to name of current track')
  ARTIST=$(osascript -e 'tell application "Spotify" to artist of current track')
  
  LABEL="$ARTIST - $TRACK"

  # Hiện module và cập nhật thông tin
  sketchybar --set $NAME drawing=on label="$LABEL" icon=
else
  # Ẩn module nếu không nghe nhạc hoặc Spotify chưa mở
  sketchybar --set $NAME drawing=off
fi