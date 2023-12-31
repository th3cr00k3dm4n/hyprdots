#!/usr/bin/env bash
IMG=$(find /home/$USER/.wallpapers -type f \( -name "*.png" -o -name "*.jpg" \)  | shuf -n1) 
sleep 0.3
swaybg -i "$IMG" -m fill >/dev/null 2>&1 &  
sleep 0.3
rm -rf .cache/wall/* 
sleep 0.3
wal -i "$IMG" >/dev/null 2>&1 
pywalfox update
sh ~/.scripts/mako.sh
sleep 0.3
sh ~/.scripts/tofi-color.sh
sleep 0.5
pkill waybar
waybar >/dev/null 2>&1 & disown &&
sleep 0.5 
notify-send "Theme Updated :)"
exit

