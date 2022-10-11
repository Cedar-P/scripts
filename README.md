# My scripts I use for turning lengthy commands into button presses

## These are the scripts I use in my dwm and dwmblocks configs

### Brightness

This includes a script to increase, decrease, and check screen brightness. the file "brightval" is used for permanent storage of what the brightness level should be.

If you won't use this in dwmblocks, remove the parts using pkill.

### Sound

This one's pretty simple. It uses amixer to set the volume and sends signal 10 to dwmblocks.

If you're not using my dwmblocks config, you'll want to remove the "pkill -RTMIN+10 dwmblocks"

Dependent on alsa and alsa-utils.

### Net

This looks at the total amount of bytes received/transferred since the system was powered on, and compares it to itself 1 second from the time of measuring, then outputs the difference. rx = received bytes, tx = transferred bytes.

### Wpi

This is a very simple script that just opens a window to do something like create a wpilib template and keeps you in the current directory. Very useful for using WPIlib (robotics library used in the international FIRST Robotics competitions for Java and C++) within the terminal. 

Note: This assumes you are using the latest install of WPIlib and that it is located in your home directory

## Overall note

It is recommended to add this to your path variable so you can just run a command to execute the files rather than cd into the directory and ./file

To do so, run the command 'PATH=${PATH}:/location/of/scripts' and 'export PATH'

To do this automatically, Append the previous commands listed to your .xinitrc or to a cron job that runs at startup
