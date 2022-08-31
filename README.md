# My scripts I use for turning lengthy commands into button presses

## These are the scripts I use in my dwm and dwmblocks config

### Brightness

This includes scripts that check brightness level, and turn it up and down, as well as send signal 11 to my dwmblocks config.

If you won't use this in dwmblocks, remove the parts using pkill.

Currently, for the script to work, you need to run chmod a+rw /sys/class/backlight/[your backlight system]/{brightness,max\_brightness}. This is not ideal, but I'm trying to find a workaround

Dependent on fish exclusively for the brightcheck.sh file. If you won't be using that, you don't need fish.

### Sound

This one's pretty simple. It uses amixer to set the volume and sends signal 10 to dwmblocks.

If you're not using my dwmblocks config, you'll want to remove the "pkill -RTMIN+10 dwmblocks"

Dependent on alsa-utils.
