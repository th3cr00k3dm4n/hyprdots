#!/bin/sh
ICON_MUTE=~/.config/mako/icons/mute.png
ICON_VOL=~/.config/mako/icons/volume.png
  case "$1" in
  "inc")
   	pamixer -i 5 && notify-send -h string:x-canonical-private-synchronous:sys-notify -i "$ICON_VOL" $( pamixer --get-volume )
    ;;
  "dec")
	 if [  $(pamixer --get-volume) = "0" ];then
	  notify-send  -h string:x-canonical-private-synchronous:sys-notify -i "$ICON_MUTE"  "Muted" 
	 else
	 	pamixer -d 5 && notify-send -h string:x-canonical-private-synchronous:sys-notify -i "$ICON_VOL" $( pamixer --get-volume )
     fi
   
    ;;
  "mute")
    pamixer -t && notify-send -h string:x-canonical-private-synchronous:sys-notify -i "$ICON_MUTE" $( pamixer --get-volume-human )
    ;; 
  esac

