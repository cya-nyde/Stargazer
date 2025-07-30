#!/bin/bash

cat <<"EOF"


  _________ __
 /   _____//  |______ _______  _________  ________ ___________
 \_____  \\   __\__  \\_  __ \/ ___\__  \ \___   // __ \_  __ \
 /        \|  |  / __ \|  | \/ /_/  > __ \_/    /\  ___/|  | \/
/_______  /|__| (____  /__|  \___  (____  /_____ \\___  >__|
        \/           \/     /_____/     \/      \/    \/

EOF

 set -euo pipefail
 IFS=$'\n\t'

#Set Required Packages for Hyprland Environment
 reqPkgs=(
  "git"
  "curl"
  "wget"
  "tar"
  "gzip"
  "unzip"
  "kitty"
  "hyprland"
  "waybar"
  "uwsm"
  "rofi"
  "swaync"
  "pipewire"
  "wireplumber"
  "xdg-desktop-portal-hyprland"
  "noto-fonts"
  "nwg-look"
  )

for pkg in "${reqPkgs[@]}"; do
  if ! pacman -Qi "$pkg" &>/dev/null; then
    echo "Installing $pkg..."
    sudo pacman -S --noconfirm "$pkg"
  else
    echo "$pkg is already installed."
  fi
done

