#File that stores user defined aliases.
# ls commands
alias la="ls -A"
alias ll="ls -alF"
alias l="ls -CF"
alias lss=LSS;

alias asdf="sudo loadkeys colemak"
alias arst="sudo loadkeys us"

function LSS(){
		ls -alGgh --color=none | awk '{print $3, " | " $7}' | column -t
}

#cd Commands 
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cd......="cd ../../../../.."
alias cdd="cd $HOME/Data/"
alias cdg="cd $HOME/Data/Git/"
alias cds="cd $HOME/Data/Git/springbank-metrics/"

# change working directory (requires xclip)
alias cpwd="pwd | tr -d '\n' | xclip -sel clip && echo 'pwd copied'"
alias cdwd="cd `xclip -sel clip -o`"

#escrotum (screenshot) commands
alias scrot="escrotum $HOME/Data/Screenshots/%Y-%b-%d_%T.png"
alias scrots="escrotum -s $HOME/Data/Screenshots/%Y-%b-%d_%T.png"
alias scrotf="escrotum -s $HOME/Data/Screenshots/ "

#rm commands
alias rmdir="rm -r"

#zsh commands
alias z="zsh"

#color theme
alias displayColors="$HOME/Data/ArchScripts/display_colors.sh"

#Power Control
alias hibern="sudo systemctl hibernate"

#When bored
#add color "red, white, magenta, green, yellow, black"
alias matrix="cmatrix -bu 7 -C " 

#function randomsay() {
    #cows=(`cowsay -l | grep -v '/'`)
    #cow=${cows[$RANDOM % ${#cows[@]} ]}
    #cowsay -f $cow `fortune` | lolcat
#}
#Make directory and cd
#mkdircd() {mkdir -p "$@" && eval cd "\"\$$#"";}

function untar {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract ."
 else
if [ -f $1 ] ; then
         NAME=${1%.*}
         mkdir $NAME && cd $NAME
        case $1 in
          *.tar.bz2) tar xvjf ../$1 ;;
          *.tar.gz) tar xvzf ../$1 ;;
          *.tar.xz) tar xvJf ../$1 ;;
          *.lzma) unlzma ../$1 ;;
          *.bz2) bunzip2 ../$1 ;;
          *.rar) unrar x -ad ../$1 ;;
          *.gz) gunzip ../$1 ;;
          *.tar) tar xvf ../$1 ;;
          *.tbz2) tar xvjf ../$1 ;;
          *.tgz) tar xvzf ../$1 ;;
          *.zip) unzip ../$1 ;;
          *.Z) uncompress ../$1 ;;
          *.7z) 7z x ../$1 ;;
          *.xz) unxz ../$1 ;;
          *.exe) cabextract ../$1 ;;
          *) echo "extract: '$1' - unknown archive method" ;;
        esac
else
echo "$1 - file does not exist"
    fi
fi
}

#Backup all config files to github repo
gitBackup(){
	cd $HOME
#	rsync -av --progress .config ~/Data/Git/dotfiles/config/ --exclude .config/vivald*
	rsync -av --exclude-from='exclude-list.txt' $HOME/ $HOME/Data/Git/dotfiles/config
	echo "Backup finished"
	cd $HOME/Data/Git/dotfiles/
	echo "Remember to Git add commit and push"
}

gitBackupTest(){
	cd $HOME
	rsync -av --exclude-from='exclude-list.txt' $HOME/ /tmp/test
    cd /tmp
    rm -Rf test
    cd $HOME
    echo "Deleted temporary folder in /tmp/"
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

#Create file chmod and vim
makeScript(){
	touch $1
	sudo chmod +x $1
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
