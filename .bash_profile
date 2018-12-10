#!/bin/bash

# prepare github folder
export DOTFILES_HOME="$HOME/dotfiles"

if [ -e $DOTFILES_HOME/.bash_aliases ]; then
    source $DOTFILES_HOME/.bash_aliases
fi

if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxCxhxhxhxhxcxcx
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Ruby related
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/shims:$PATH"
