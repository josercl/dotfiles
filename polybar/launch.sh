#!/bin/bash

# Terminate already running bar instances
#ps -edf|grep polybar|grep -v grep|awk '{print $2}'|xargs kill -9
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar main -r -c ~/.config/polybar/config.teal &
polybar second -r -c ~/.config/polybar/config.teal &
