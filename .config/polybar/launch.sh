#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Start Polybar
polybar --reload mainbar &
polybar --reload sidebar &

# Old way of starting that doesn't work well with two monitors and system tray
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload mainbar &
#  done
#else
#  polybar --reload mainbar &
#fi

echo "Polybar launched..."
