# My scripts I use for turning lengthy commands into button presses

## These are the scripts I use in my dwm and dwmblocks configs (and for a few other things)

### Brightness

This includes a script to increase, decrease, and check screen brightness. the file "brightval" is used for permanent storage of what the brightness level should be.

If you won't use this in dwmblocks, remove the parts using pkill.

### Sound

This one's pretty simple. It uses amixer to set the volume and sends signal 10 to dwmblocks.

If you're not using my dwmblocks config, you'll want to remove the "pkill -RTMIN+10 dwmblocks"

### Net

This looks at the total amount of bytes received/transferred since the system was powered on, and compares it to itself 1 second from the time of measuring, then outputs the difference. rx = received bytes, tx = transferred bytes.

### Wpi

Simple script that open up a window to create a directory for a WPIlib project, then build that directory

Note: This assumes you are using the latest install of WPIlib and that it is located in your home directory

I am fairly new to the whole robotics thing, and haven't even gotten the simulation to run properly, just run without error. It is also likely that the build function is missing core functionality, since, again, I am new to this, and my team hasn't started teaching the newer programmers (me) how to use WPIlib yet, so all functionality is based purely off of a small amount of research and testing.

This also only has support for Java currently. When I am more experienced, I will build support for C++

### Macrand

This script should be run from the terminal (uses read command, could maybe use dmenu for out of terminal) and randomizes your mac address. Currently this only works sometimes due to weird complicated mac address stuff. I'll get to it eventually.

## Overall note

It is recommended to add this to your path variable so you can just run a command to execute the files rather than cd into the directory and ./file

To do so, run the command 'PATH=${PATH}:/location/of/scripts' and 'export PATH'

To do this automatically, Append the previous commands listed to your .xinitrc or to a cron job that runs at startup
