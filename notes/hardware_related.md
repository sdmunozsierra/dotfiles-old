#Hardware Related Issues, Scripts, and How-To's

##Dissable Webcam
This is because I'm Paranoic

_dissable_
$ sudo modprobe -r uvcvideo

_enable_
$ sudo modprobe uvcvideo

__dissable at start__
$ gksu vim /etc/modprobe.d/blacklist.conf

add at the end:
blacklist uvcvideo

__enable at start__
erase last line in blacklist.conf
