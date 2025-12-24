#!/bin/bash

# Ensure we can find mactop and jq
export PATH="$PATH:/opt/homebrew/bin:/usr/local/bin"

# Fetch CPU temperature
# We use awk to format to avoid issues if xargs or printf behave differently in limited env
JSON_OUTPUT=$(mactop --headless --count 1 2>/dev/null)
TEMP=$(echo "$JSON_OUTPUT" | jq '.[0].cpu_temp' 2>/dev/null)

# Check if we got a valid number
if [[ "$TEMP" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    # Round to int using awk
    TEMP_INT=$(echo "$TEMP" | awk '{printf "%.0f", $1}')
    sketchybar --set "$NAME" label="${TEMP_INT}°C"
else
    # Fallback if mactop fails or returns empty
    sketchybar --set "$NAME" label="--"
fi