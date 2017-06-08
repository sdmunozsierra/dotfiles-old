# NVidia 
Porque eres asi?

NVidia used to hate linux to the point Linus Trovalds said "FUCK YOU NVIDIA". So it is a pain to install and test nvidia drivers. 
In my case my laptop has an intel integrated card and a Nvidia dedicated card. So to have both working or at least configured you need to set up Bumblebee (Transformers n' shit).

## Information

VGA compatible controller: Intel Corporation Device 5916 (rev 02)
        Subsystem: Acer Incorporated [ALI] Device 1094
        Kernel driver in use: i915
3D controller: NVIDIA Corporation Device 179c (rev a2)
        Subsystem: Acer Incorporated [ALI] Device 1094
        Kernel driver in use: nouveau

Nvidia Geforce 940MX 
	Current Version: 375.66 (2017.5.4)

## Bumblebee
__Installation:__
Download the following packages:
* bumblebee
* mesa
* nvidia driver:
	nvidia or nvidia-beta (AUR) if first does not work
* xf86-video-intel

Add bumblebee to users
gpasswd -a keanue bumblebee

Enable service
systemctl enable bumblebeed.service

__test:__
install mesa-demos
use `glxgears` as follows: optirun glxgears -info
or optirun glxspheres64

__Results:__
Before bumblebee: Spheres fullsize avg 30fps
Before bumblebee: gears fullsize avg 60 fps
After bumblebee: Spheres fullsize avg 46 fps (Video looks flugly though)
After bumblebee: gears fullsize avg 142 fps (Video looks flugly though)

Wholly Shit Batman.

### Manual Installation (From Nvidia Repos) (Might Break your system though)
sudo service lightdm stop
sudo service gdm stop
sudo service mdm stop

chmod +x ~/Doenloads/Nvidia-linux-xx-.run && su
do sh ~/Downloads/NVIDIA-linux.run

__unistall__

sudo sh ~/Downloads/NVIDIA-Linux-xx.run --unistall

## Configuration

Run programs with optirun to use Nvidia Card

* Brightness
Install xbacklight
touch /etc/X11/xorg.conf
add option xbacklight xbacklight_intel
reboot.
