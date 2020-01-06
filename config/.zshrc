source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle ls

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle https://github.com/trapd00r/zsh-syntax-highlighting-filetypes.git

# Load the theme.
antigen theme romkatv/powerlevel10k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs history)

# Tell Antigen that you're done.
antigen apply

# source bash aliases (can't live without them)
source ~/.bash_aliases

# This will share the history with bash
HISTFILE=~/.bash_history
HISTSIZE=1000
SAVEHIST=1000
unsetopt extended_history
setopt share_history
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
<<<<<<< HEAD
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
