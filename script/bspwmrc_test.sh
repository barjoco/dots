#!/bin/sh

nohup Xephyr :2 &

export DISPLAY=:2

sleep 1

bspwm &

sh ~/.config/bspwm/bspwmrc
