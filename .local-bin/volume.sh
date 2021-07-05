#!/usr/bin/env bash

if [[ $1 == "up" ]]; then
	amixer set Master 5%+ > /dev/null
else 
	if [[ $1 == "down" ]]; then
		amixer set Master 5%- > /dev/null
	else
		awk -F"[][]" '/dB/ { print $2 }' <(amixer get Master)
	fi
fi
