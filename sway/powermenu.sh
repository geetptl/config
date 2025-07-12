#!/bin/bash

# Options
options="Lock\nLogout\nReboot\nShutdown"

# Rofi command
choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case "$choice" in
  Lock)
    swaylock ;;
  Logout)
    swaymsg exit ;;
  Reboot)
    systemctl reboot ;;
  Shutdown)
    systemctl poweroff ;;
esac
