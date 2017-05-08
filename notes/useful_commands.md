#Useful Commands

##Restart Services, Configs, Programs

	1. Aliases
	$ source ~/.bashrc

##Sound and Video

###Volume using amixer:

	1. Volume to a percentage:
	$ amixer sset 'Master' 50% 

	2. Increase by 3%
	$ amixer -q sset Master 3%+

	3. Toggle Mute
	$ amixer -q sset Master toggle

