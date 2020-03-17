#!/usr/bin/env bash

BAR_ICON=""
NOTIFY_ICON=/usr/share/icons/Papirus/32x32/apps/system-software-update.svg

get_total_updates() { UPDATES=$(cower -u 2>/dev/null | wc -l); }

while true; do
    get_total_updates

    # when there are updates available
    # every 10 seconds another check for updates is done
    while (( UPDATES > 0 )); do
        #if (( UPDATES == 1 )); then
        #    echo " $UPDATES Update"
        #elif (( UPDATES > 1 )); then
        #    echo " $UPDATES Updates"
        #else
        if (( UPDATES >= 1 )); then
            echo "$BAR_ICON $UPDATES"
        else
            echo $BAR_ICON
        fi
        sleep 10
        get_total_updates
    done

    # when no updates are available, use a longer loop, this saves on CPU
    # and network uptime, only checking once every 30 min for new updates
    while (( UPDATES == 0 )); do
        echo $BAR_ICON
        sleep 1800
        get_total_updates
    done
done