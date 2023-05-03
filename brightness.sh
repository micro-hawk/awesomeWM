#!/bin/bash
dir_contents=$(ls /sys/class/backlight/)
max_brightness=$(cat /sys/class/backlight/${dir_contents}/max_brightness)
echo "Max Brightness: ${max_brightness}"

echo -n "Enter brightness %: "
read brightness_percentage

brightness=$(($brightness_percentage*$max_brightness/100));
# echo $brightness
if [ $brightness -le $max_brightness ]; then
    echo "$brightness" > /sys/class/backlight/intel_backlight/brightness
else
    echo "Invalid brightness %"
fi
