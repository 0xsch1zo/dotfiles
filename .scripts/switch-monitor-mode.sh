#!/bin/bash

hypr_config="${HOME}/.config/hypr/hyprland.conf"

desktop-mode () {
	check-mode "# Laptop mode"
	if [[ $? -eq 0 ]]; then
		echo "Error: Unrecognized or wrong mode"
		exit 1
	fi
	sed -i -e 's/.*Laptop mode/# Desktop mode/' -e 's|.*modules/laptop-hdpi-mode-monitors.conf$|source = modules/monitors.conf|' -e '\,source = modules/laptop-hdpi-mode.conf,d' $hypr_config
}

laptop-mode () {
	check-mode "# Desktop mode"
	if [[ $? -eq 0 ]]; then
		echo "Error: Unrecognized or wrong mode"
		exit 1
	fi
	sed -i -e 's/.*Desktop mode/# Laptop mode/' -e 's|.*modules/monitors.conf$|source = modules/laptop-hdpi-mode-monitors.conf|' $hypr_config
	echo source = modules/laptop-hdpi-mode.conf >> $hypr_config
}

check-mode () {
	local mode=`head -n1 $hypr_config`
	if [[ $mode == $1 ]]; then
		return 1
	else
		return 0
	fi
}

case $1 in
	--desktop-mode)
	desktop-mode
	;;
	--laptop-mode)
		laptop-mode
		;;
	*)
		echo "Error: invalid argument"
		exit 1
		;;
esac


