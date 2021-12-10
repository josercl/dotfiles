#!/bin/bash

DEVICE_ID=$(xinput|grep Touchpad|sed "s/\t/_/g"|cut -d"_" -f2|cut -d"=" -f2)
PROP_ID=$(xinput list-props $DEVICE_ID|grep "Tapping Enabled ("|cut -d"(" -f2|cut -d")" -f1)

xinput set-prop $DEVICE_ID $PROP_ID 1