#!/bin/bash

if (ps -a | grep tofi >/dev/null); then
  killall -q tofi
else
  case $(printf "%s\n"  "󰌾" "󰍃" "" "" "󰒲"  | tofi --width 180 --height 260) in
  "󰌾")
    swaylock
    ;;
  "󰍃")
      hyprctl dispatch exit 
    ;;
  "")
    systemctl poweroff
    ;;
  "")
    systemctl reboot
    ;;
  "󰒲")
    systemctl suspend
    ;;
 
  esac
fi
