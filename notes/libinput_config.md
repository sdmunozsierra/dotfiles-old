# Configure libinput _Touchpad Driver_ for X
This file will have the basics to configure your Acer Aspire E 15's driver under Arch Linux.

Note, do not use synaptics package.

## Common Options
Custom configuration files should be placed in `/etc/X11/xorg.conf.d/`
Touch a file `$ sudo 30-touchpad.conf`
Add the following:
`Section "InputClass"
    Identifier "devname"
    Driver "libinput"
    ...
EndSection`

To obtain _Identifier_ value go to `/usr/share/X11/xorg.conf.d/40-libinput.conf` and look for the touchpad identifier name

To add and change preferences add the following:
	`Option "Feature" "on/off"`
To see what features are offered go to [libinput doc] (https://wayland.freedesktop.org/libinput/doc/latest/clickpad_softbuttons.html#clickfinger).

## Config File
