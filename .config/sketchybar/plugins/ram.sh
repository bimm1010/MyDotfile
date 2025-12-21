#!/bin/bash

# Lấy thông số RAM sử dụng (đơn vị GB)
# Cách tính: Tổng RAM - RAM trống
MEM_USED=$(memory_pressure | grep "System-wide memory free percentage" | awk '{print 100-$5}')
# Để lấy số GB dùng chính xác hơn trên macOS:
USED_GB=$(vm_stat | perl -ne '/page size of (\d+) bytes/ && ($s=$1); /Pages active:\s+(\d+)/ && ($a=$1); /Pages wired down:\s+(\d+)/ && ($w=$1); /Pages occupied by compressor:\s+(\d+)/ && ($c=$1); END { printf "%.1f", ($a+$w+$c)*$s/1024/1024/1024 }')

sketchybar --set $NAME label="${USED_GB}GB" icon=􀫦
