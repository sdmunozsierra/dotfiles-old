# Various Config files

__IMPORTANT: use source [filename] to update changes__

## Add commands and scripts at startup
_location file:_
/etc/rc.local

## Custom login screen
/etc/lightdm/lightdm-gtk-greeter.conf
/etc/xdg/lubuntu/lxdm.conf

## Custom aliases for bash
_location file:_
'code: ~/.bash_aliases'

## Custom Paths: dev/sda/ HDD 

## Environment Variables (Arch)
/etc/environment
source after editing
note: It would be better to save it in ~/.bash.rc so i3 picks it up at startx

## Enable 256 colors in vim
_location file:_
~/.profile\

## Openbox Configuration: keybindings
_location file:_
~/.config/openbox/lubuntu-rc.xml

## Xinit Configuration:
_location file:_
/etc/X11/xinit

## Terminal Configuration
_location file:_
~/.Xdefaults
~/.xsession

_st terminal_
You must recompile each time you make a configuration
Location Repos/st/
files to modify
config.h

## Wmii Configuration
## Use wmiirc for hardcore mods
What I've read this is deprecated

_location files:_
~/.wmii/wmiirc 
~/.wmii/wmii_local
