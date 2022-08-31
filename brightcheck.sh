echo $(math $(math $(cat /sys/class/backlight/intel_backlight/brightness) / $(cat /sys/class/backlight/intel_backlight/max_brightness)) x 100 | awk '{print int($1 + 0.5) } ')%
