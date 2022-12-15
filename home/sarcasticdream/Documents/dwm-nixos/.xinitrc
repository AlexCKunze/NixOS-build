#!/usr/bin/env bash
xrandr -s 1920x1080 &
nitrogen --restore &
xrdb ~/.Xresources &
bash ~/dmenubar.sh &
$(sleep 5s ; xsetroot -cursor_name left_ptr) &
picom &
exec dwm
