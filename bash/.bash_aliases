#File that stores user defined aliases.
# ls commands
alias la="ls -A"
alias ll="ls -alF"
alias l="ls -CF"


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

#git commands
alias gbdir="cp -r * ~/Data/Git/dotfiles/all_backup/"

#color theme
alias displayColors="~/Data/ArchScripts/display_colors.sh"

#Power Control
alias hibern="sudo systemctl hibernate"

#When bored
#add color "red, white, magenta, green, yellow, black"
alias matrix="cmatrix -bu 7 -C " 

#Make directory and cd
#mkdircd() {mkdir -p "$@" && eval cd "\"\$$#"";}

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
