HISTCONTROL=erasedups
HISTIGNORE="exit"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias test='echo bashrc is working'
#PS1='\[\033[31m\]Keanue  \W\[\033[00m\]\$ '	#Show small path for wolfst
PS1='\[\033[1;31m\]Keanue  \W\[\033[1;31m\]\$\[\033[1;37m\] '	#Show small path
#PS1='\[\033[31m\]Keanue  $PWD\[\033[00m\]\$ '	#Show full path

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

#myPath="/home/keanue/Data/"
#export PATH=":/home/keanue/Data/ArchScripts"
#PATH="$PATH:$myPath"
#HOME="$HOME/Data/"
#PWD="$PWD/Data/"

LS_COLORS=$LS_COLORS:'fi=0;1;30:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'di=0;31:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ln=0;1;34:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=0;1;33:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'mi=0;1;32:' ; export LS_COLORS

#256 file enabled by default in st
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

#Aliases file
if [ -f ~/.bash_aliases ];then
	source ~/.bash_aliases
fi

export PATH=/home/keanue/.local/bin:/home/keanue/.gem/ruby/2.4.0/bin:/home/keanue/.gem/ruby/2.4.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/ti/msp430_gcc/bin
