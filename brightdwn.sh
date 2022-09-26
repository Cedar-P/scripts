#!/usr/bin/env
brightval=$(cat ${HOME}/scripts/brightval)
if [[ $brightval == "0.1" ]] || [[ $brightval == "0" ]]; then
	echo 0 > ${HOME}/scripts/brightval
elif [[ $brightval == "1" ]] ; then
	echo 0.9 > ${HOME}/scripts/brightval
else
	echo "0.$(expr $(cat ${HOME}/scripts/brightval | sed s/0.//) - 1)" > ${HOME}/scripts/brightval
fi
xrandr --output LVDS-1 --brightness $(cat ${HOME}/scripts/brightval)
pkill -RTMIN+11 dwmblocks
