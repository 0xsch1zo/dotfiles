#!/bin/bash
alpha=`cat ~/.config/alacritty/alacritty.toml | grep opacity |sed 's/opacity *= *//'`
hexalpha=`printf "%X" "$(echo "$alpha*255+0.5" | bc)"`
sed -i "/\$background/s/}.*/}$hexalpha)/" ~/.config/wal/templates/colors-hyprland.conf
