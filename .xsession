#!/bin/sh
xset -b
xset s off -dpms
#/home/user/.fehbg &
nitrogen --restore &
exec /usr/bin/i3
