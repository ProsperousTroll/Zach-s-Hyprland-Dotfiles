#!/bin/sh
set +e

dbus-update-activation-environment --systemd --all

# Services
waybar &
mako &
swaybg -i ~/zachs-dotfiles/mango/.config/mango/bluecitycool.jpg &

swayidle -w \
   timeout 600 'wlopm --off "*"' \
   resume 'wlopm --on "*"'

