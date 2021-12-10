#!/bin/bash

SCREENS=$(xrandr | grep "connected"|grep -v "disconnected"|awk '{print$1}')
PRIMARY_SCREEN=$(xrandr | grep "connected"|grep "primary"|awk '{print$1}')

DISPLAYS=""
NDISPLAYS=0
for display in $SCREENS;
do
	if [ $display != $PRIMARY_SCREEN ];
	then
		NDISPLAYS=$(( NDISPLAYS + 2 ))
		if [ ! -z "$DISPLAYS" ];
		then
			DISPLAYS="$DISPLAYS|"
		fi
		DISPLAYS="$DISPLAYS$display to the Right"
		DISPLAYS="$DISPLAYS|$display to the Left"	
	fi
done

RESPONSE="$(rofi -no-lazy-grab -dmenu -p 'Monitor Configuration' -lines $NDISPLAYS -width 15 -hide-scrollbar -location 0 -theme ~/.config/polybar/scripts/rofi/launcher.rasi -sep '|' <<< $DISPLAYS)"

SIDE=$(echo $RESPONSE|cut -d " " -f4|tr [:upper:] [:lower:])
OUTPUT=$(echo $RESPONSE|cut -d " " -f1)

case $SIDE in
	left)
		xrandr --output $OUTPUT --auto --left-of $PRIMARY_SCREEN
		;;
	right)
		xrandr --output $OUTPUT --auto --right-of $PRIMARY_SCREEN
		;;
	*)
		;;
esac
