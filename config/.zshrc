# Source antigen
source /usr/share/zsh/share/antigen.zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme eendroroy/alien-minimal alien-minimal
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.bash_history
HISTSIZE=2000
SAVEHIST=1000
setopt appendhistory extendedglob
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/keanue/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Source aliaces from bash
source ~/.bash_aliases
