# Source antigen
source /usr/share/zsh/share/antigen.zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle https://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git

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
# Plugins
plugins=(colorize)
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Source aliases from bash
source ~/.bash_aliases

# Source ls colors
#source /usr/share/LS_COLORS/dircolors.sh

# Enable this for bash completions
# Or use (zsh-completions)
# bash completion
#autoload bashcompinit
#bashcompinit
# Source flutter bash completions
#source /usr/local/etc/bash_completion.d/flutter
