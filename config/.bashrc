HISTCONTROL=erasedups
HISTIGNORE="exit"
export IGNOREEOF=5 #Press ctrl-d 5 times to exit bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias test='echo bashrc is working'
#PS1='\[\033[31m\]Keanue  \W\[\033[00m\]\$ '	#Show small path for wolfst
PS1='\[\033[1;31m\]Keanue  \W\[\033[1;31m\]\$\[\033[1;00m\] '	#Show small path
#PS1='\[\033[31m\]Keanue  $PWD\[\033[00m\]\$ '	#Show full path

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

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

#PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH=/home/munozsies/.local/bin:/home/munozsies/.gem/ruby/2.5.0/bin:/home/munozsies/.gem/ruby/2.5.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/ti/msp430_gcc/bin
