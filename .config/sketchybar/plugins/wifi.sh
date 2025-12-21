#!/bin/bash

# Lấy interface đang được dùng làm kết nối chính
CURRENT_INTERFACE=$(route get default | grep interface | awk '{print $2}')

if [ "$CURRENT_INTERFACE" = "" ]; then
  sketchybar --set $NAME label="Offline" icon=􀙈
else
  # Lấy tên Hardware Port dựa trên interface (ví dụ: Wi-Fi, Thunderbolt Ethernet, ...)
  HARDWARE_PORT=$(networksetup -listallhardwareports | grep -B 1 "Device: $CURRENT_INTERFACE" | awk -F': ' '/Hardware Port/{print $2}')

  ICON=􀒗 # Default icon

  case "$HARDWARE_PORT" in
    *"Wi-Fi"*)
      ICON=􀙇
      ;;
    *"Thunderbolt"*)
      ICON=􀋦
      ;;
    *"Ethernet"*|*"LAN"*)
      ICON=􀌗
      ;;
  esac

  sketchybar --set $NAME label="$CURRENT_INTERFACE" icon="$ICON"
fi