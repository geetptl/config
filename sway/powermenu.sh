#!/bin/bash

# Options
options="lock\nlogout\nreboot\nshutdown"

# Rofi command
choice=$(echo -e "$options" | rofi -dmenu -p "Power Menu")

case "$choice" in
  lock)
    swaylock ;;
  logout)
    swaymsg exit ;;
  reboot)
    systemctl reboot ;;
  shutdown)
    systemctl poweroff ;;
esac
