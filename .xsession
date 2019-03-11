#!/bin/sh
xset -b
xset s off -dpms
#/home/user/.fehbg &
nitrogen --restore &
autocutsel
exec /usr/bin/i3
