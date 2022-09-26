#!/usr/bin/env
brightval=$(cat ${HOME}/scripts/brightval)
echo $(expr $brightval + 1) > ${HOME}/scripts/brightval
if [[ $brightval -ge 10 ]] ; then
	echo 10 > ${HOME}/scripts/brightval
elif [[ $brightval -le 0 ]] ; then
	echo 0 > ${HOME}/scripts/brightval
fi
xrandr --output LVDS-1 --brightness $(echo ".${brightval}")
pkill -RTMIN+11 dwmblocks
