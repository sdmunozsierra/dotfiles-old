#File that stores user defined aliases.

#CD Commands 
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."

#Power Control
alias hibern="sudo systemctl hibernate"

#When bored
#add color "red, white, magenta, green, yellow, black"
alias matrix="cmatrix -bu 7 -C " 

#Make directory and cd
#mkdircd() {mkdir -p "$@" && eval cd "\"\$$#"";}

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
