#!/bin/bash

if [[ $(xrandr -q | grep 'DP-2 connected') ]]; then
	xrandr --output DP-1 --primary --mode 2560x1080 --pos 1920x0 --rotate normal --output HDMI-1 --off --output DP-2 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-2 --off --output DP-3 --off --output HDMI-3 --off &
else
	xrandr --output DP-1 --primary --mode 2560x1080 --pos 1920x0 --rotate normal --output HDMI-1 --off --output DP-2 --off HDMI-2 --off --output DP-3 --off --output HDMI-3 --off &
fi

