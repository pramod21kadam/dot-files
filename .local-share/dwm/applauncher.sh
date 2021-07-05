#!/bin/bash
if [[ $1 == "applauncher" ]]; then
	# exec /home/pramodkadam/.local/bin/mdmenu_run
	exec rofi -show drun
elif [[ $1 == "power-menu" ]];then
	exec /home/pramodkadam/.local/bin/power-menu
fi

