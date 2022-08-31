bright=$(cat /sys/class/backlight/intel_backlight/brightness)
maxbright=$(cat /sys/class/backlight/intel_backlight/max_brightness)
newbright=$(expr $bright - 120424)
if [ $newbright -le 0 ]
then
	newbright=0
elif [ $newbright -ge $maxbright ]
then
	newbright=$maxbright
fi
echo $newbright > /sys/class/backlight/intel_backlight/brightness
pkill -RTMIN+11 dwmblocks
