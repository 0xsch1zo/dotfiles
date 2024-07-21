#!/bin/bash

desktop_monitor="HDMI-A-1"
laptop_mode="eDP-1"
mode=`head -n1 ~/.config/hypr/hyprland.conf`
symlink="/home/sentience/.currentwal.png"

if [[ $mode == "# Desktop mode" ]]; then
	current_wallpaper=`swww query | sed "/${desktop_monitor}/s/.*image: //"`
	ln -sf "$current_wallpaper" "$symlink"
else
	current_wallpaper=`swww query | sed "/${laptop_monitor}/s/.*image: //"`
	ln -sf "$current_wallpaper" "$symlink"
fi
