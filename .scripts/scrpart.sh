#!/bin/sh
slurp | grim -g - $HOME/Pictures/screenshots/screengrab-$(date "+%Y-%m-%d-%H:%M:%S").png && notify-send "Screenshot Captured and saved in ~/Pictures/screenshots"
