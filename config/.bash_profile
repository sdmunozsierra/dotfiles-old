#
. ~/.profile
#

# Clear xclip to avoid STRING error (find a better way)
# it's driving me nuts
echo fu | xclip -selection s

[[ -f ~/.bashrc ]] && . ~/.bashrc
