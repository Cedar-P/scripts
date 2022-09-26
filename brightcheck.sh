#!/usr/bin/env
if [[ $(cat ${HOME}/scripts/brightval) == "1" ]] ; then
	echo 100%
else 
	echo $(cat ${HOME}/scripts/brightval | sed s/0.//)0%
fi
