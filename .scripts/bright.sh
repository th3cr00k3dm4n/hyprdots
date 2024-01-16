#!/bin/sh
ICON=~/.config/mako/icons/brightness.png

get_backlight() {
	echo $(brightnessctl -m | cut -d, -f4)
}


  case "$1" in
  "--inc")
	brightnessctl set +5 && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$ICON" "$get_backlight%"
    ;;
  "--dec")
    brightnessctl set -5 &&	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$ICON" "$get_backlight%"

	;;
  esac

