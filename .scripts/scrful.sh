#!/bin/sh
grim $HOME/Pictures/screenshots/screenshot-$(date "+%Y-%m-%d-%H:%M:%S").png && notify-send "Screenshot Captured and saved in ~/Pictures/screenshots"
