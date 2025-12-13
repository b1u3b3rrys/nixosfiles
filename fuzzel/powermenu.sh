#!/bin/bash

SELECTION="$(printf "1 - Reboot\n2 - Shutdown" | fuzzel --dmenu -l 7 -p "Goodbye?: ")"

[ -z "$SELECTION" ] && exit 0

case "$SELECTION" in
    "1 - Reboot")
        systemctl reboot
        ;;
    "2 - Shutdown")
        systemctl poweroff
        ;;
esac
