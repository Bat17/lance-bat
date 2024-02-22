#!/bin/bash


cat ~/.config/bspwm/sxhkdrc | awk '/^[a-z]/ && last {print $0,"\t",last} {last=""} /^#/{last=$0}' | column -t -s $'\t' | rofi -dmenu -theme CheatSheet -i -no-show-icons  -l 30 -window-title CheatSheet#!/bin/bash


