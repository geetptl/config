#!/bin/bash

# Find OVPN files
options=$(ls ~/.openvpn/*.ovpn 2>/dev/null | xargs -I {} basename {} | tr ' ' '\n')

# Rofi menu
choice=$(echo -e "$options" | rofi -dmenu -p "VPN")

case "$choice" in
  "")
    exit 0 ;;  # User cancelled
  *)
    kitty -e bash -c "cd ~/.openvpn && sudo openvpn \"$choice\"" ;;
esac
