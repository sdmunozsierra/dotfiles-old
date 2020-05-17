# Main profile
. ~/.profile

# avoid STRING error by setting current working directory
cd ~
pwd | xclip -r -selection secondary 

# Source bashrc
[[ -f ~/.bashrc ]] && . ~/.bashrc

