#File that stores user defined aliases.
# ls commands
alias la="ls -A"
alias ll="ls -alF"
alias l="ls -CF"
alias lss=LSS;

function LSS(){
		ls -alGgh --color=none | awk '{print $3, " | " $7}' | column -t
}

#cd Commands 
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

#escrotum commands
alias scrot="escrotum ~/Data/Screenshots/%Y-%b-%d_%T.png"
alias scrots="escrotum -s ~/Data/Screenshots/%Y-%b-%d_%T.png"
alias scrotf="escrotum -s ~/Data/Screenshots/ "

#rm commands
alias rmdir="rm -r"

#color theme
alias displayColors="~/Data/ArchScripts/display_colors.sh"

#Power Control
alias hibern="sudo systemctl hibernate"

#When bored
#add color "red, white, magenta, green, yellow, black"
alias matrix="cmatrix -bu 7 -C " 

#Make directory and cd
#mkdircd() {mkdir -p "$@" && eval cd "\"\$$#"";}

#Backup all config files to github repo
gitBackup(){
	cd ~
#	cp -v .bash* ~/Data/Git/dotfiles/bash/ 		#Bash
#	rsync -av --progress .config ~/Data/Git/dotfiles/config/ --exclude .config/vivald*
	rsync -av --exclude-from='/home/keanue/exclude-list.txt' /home/keanue/ /home/keanue/Data/Git/dotfiles/config
#	cp -v .vimrc ~/Data/Git/dotfiles/vim/ 		#vim
#	cp -v .Xauth* ~/Data/Git/dotfiles/x/ 		#Xaut
#	cp -v .xini* ~/Data/Git/dotfiles/x/ 		#xinit
	echo "Backup finished"
	cd ~/Data/Git/dotfiles/
#	git add *
#	git commit -m "Backup all config files"
	echo "Remember to Git add commit and push"
#	git push
}

gitBackupTest(){
	cd ~
	rsync -av --exclude-from='/home/keanue/exclude-list.txt' /home/keanue/ /home/keanue/temp/test
}

#Debug st
debugSt(){
	sudo rm -r deleteme
	sudo cp -r wolfst deleteme/
	cd deleteme	
	sudo make clean install
	cd ..
}

#Create file chmod and vim
touchVim(){
	touch $1
	sudo chmod +777 $1
	vim $1
}

##Multimedia
bitrate (){
  echo `basename "$1"`: `file "$1" | sed 's/.*, \(.*\)kbps.*/\1/' | tr -d " " ` kbps
}

#Set up extra monitor
alias setVideo="arandr"
alias setAudio="pavucontrol"
alias setMonitor="setVideo && setAudio"

#Youtube player
alias youtube="mpsyt"
