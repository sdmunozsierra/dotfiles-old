#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias test='echo bashrc is working'
PS1='\e[32m[Keanue  \W]\e[37m\$ '
export PS2='\e[112m[\A Keanue  \W]\e[37m\$ '

#myPath="/home/keanue/Data/"
#export PATH=":/home/keanue/Data/ArchScripts"
#PATH="$PATH:$myPath"
#HOME="$HOME/Data/"
#PWD="$PWD/Data/"

#256 file enabled by default in st
#if [ -e /usr/share/terminfo/x/xterm-256color ]; then
#	export TERM='xterm-256color'
#else
#	export TERM='xterm-color'
#fi

#Aliases file
if [ -f ~/.bash_aliases ];then
	source ~/.bash_aliases
fi
