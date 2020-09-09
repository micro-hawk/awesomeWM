#!/bin/bash

echo "Max Brightness: 937"

echo -n "Enter brightness: "
read brightness

echo "$brightness" > /sys/class/backlight/intel_backlight/brightness
