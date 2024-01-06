#!/bin/bash

# Check if $1 (path) is provided
if [ -z "$1" ]; then
	IMG=$(find /home/$USER/.wallpaper/ -type f \( -name "*.png" -o -name "*.jpg" \)  | shuf -n1) 
	sleep 0.3
	swaybg -i "$IMG" -m fill >/dev/null 2>&1 &  
	sleep 0.3
	rm -rf .cache/wall/* 
	sleep 0.3
	wal -i "$IMG" >/dev/null 2>&1 
	pywalfox update
	sleep 0.2
	sh ~/.scripts/mako.sh
	sleep 0.3
	sh ~/.scripts/tofi-color.sh
	sleep 0.3
	pkill waybar
	sleep 0.3
	waybar >/dev/null 2>&1 & disown &&
	sleep 0.3
	hyprctl reload
	sleep 0.3
	notify-send "Theme Updated :)"
	exit
else
	swaybg -i "$1" -m fill >/dev/null 2>&1 &  
	sleep 0.3
	rm -rf .cache/wall/* 
	sleep 0.3
	wal -i "$IMG" >/dev/null 2>&1 
	pywalfox update
	sleep 0.2
	sh ~/.scripts/mako.sh
	sleep 0.3
	sh ~/.scripts/tofi-color.sh
	sleep 0.3
	pkill waybar
	sleep 0.3
	waybar >/dev/null 2>&1 & disown &&
	sleep 0.3
	hyprctl reload
	sleep 0.3
	notify-send "Theme Updated :)"
	exit
fi
exit
