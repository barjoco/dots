#!/bin/sh

# get touchpad ID
touchpadId=$(xinput list | grep -oP "1A581000:00 06CB:CDA3 Touchpad\s*id=\K\d*")

# get properties for 'tapping enabled' and 'acceleration speed'
tappingEnabled=$(xinput list-props $touchpadId | grep -oP "Tapping Enabled \(\K\d*")
accelSpeed=$(xinput list-props $touchpadId | grep -oP "Accel Speed \(\K\d*")

# set tapping enabled to true and increase acceleration speed
xinput set-prop $touchpadId $tappingEnabled 1
xinput set-prop $touchpadId $accelSpeed 0.25
