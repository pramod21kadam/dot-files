#!/bin/bash

# Set wallpaper
xwallpaper --zoom $HOME/.config/dwm/wallpaper/wallpaper.* ;

# Start Picom
# exec picom --experimental-backends --backend glx & 

# Start Polybar
exec polybar mybar &
