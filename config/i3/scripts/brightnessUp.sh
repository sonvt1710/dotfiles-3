#!/bin/sh
file="/sys/class/backlight/amdgpu_bl0/brightness"
name=$(cat "$file")
finalName=$((name + 20))
if [[ finalName -lt 250 ]]; then
	echo $finalName >> $file
fi
