# My scripts I use for turning lengthy commands into button presses

## These are the scripts I use in my dwm and dwmblocks config

### Brightness

This includes scripts to increase and decrease brightness. the file "brightval" is used for permanent storage of what the brightness level should be.

If you won't use this in dwmblocks, remove the parts using pkill.

Dependent on xrandr.

### Sound

This one's pretty simple. It uses amixer to set the volume and sends signal 10 to dwmblocks.

If you're not using my dwmblocks config, you'll want to remove the "pkill -RTMIN+10 dwmblocks"

Dependent on alsa-utils.

### Net

This looks at the total amount of bytes received/transferred since the system was powered on, and compares it to itself 1 second from the time of measuring, then outputs the difference. rx = received bytes, tx = transferred bytes.
