#!/bin/bash

if (ps -a | grep tofi >/dev/null); then
  killall -q tofi
else
  case $(printf "%s\n"  "󰌾" "󰍃" "" "" "󰒲"  | tofi --width 100 --height 300 --hide-input=true --prompt-text=""   ) in
  "󰌾")
    swaylock
    ;;
  "󰍃")
      hyprctl dispatch exit 0
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
