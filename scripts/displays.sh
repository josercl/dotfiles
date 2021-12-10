#!/bin/bash

MAIN="eDP-1-1"
RIGHT="HDMI-0"
LEFT="VGA-1"

xrandr --output $MAIN --primary
# xrandr --output $LEFT --auto --left-of $MAIN
xrandr --output $RIGHT --auto --right-of $MAIN

MONITOR=`xrandr |grep primary|cut -d' ' -f1`

export MONITOR
