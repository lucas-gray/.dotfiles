#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Start Polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mybar &
  done
else
  polybar --reload mybar &
fi

echo "Polybar launched..."
