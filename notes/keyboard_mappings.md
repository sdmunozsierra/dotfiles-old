#Change Keyboard Mappings

##The system-wide map files are in

/usr/share/X11/xkb/symbols/

##In order for it to work 

	* delete

	/var/lib/xkb

	all *xkm files

##Changed the en mappings as follows
	* filename inside */symbols: us
	* find keys you want to replace


#Use A Script To Run The Configuration

##Create a script file
/usr/bin/swap-esc-caps.sh

Code:
xmodmap swap-esc-caps

##Create another file 
swap-esc-caps

Code:
!Swap Caps-Lock and Escape
remove Lock = Caps_Lock
keysym Escape = Caps_Lock
keysym Caps_Lock = Escape
add Lock = Caps_Lock

##Make it run at start
/etc/xdg/lxsession/Lubuntu/autostart
	* Insert at the end of the line
@/usr/bin/swap-sc-caps.sh

#Find a key name 
# xev
