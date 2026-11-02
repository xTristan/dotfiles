#!/bin/bash

# prepare github folder
export DOTFILES_HOME="$HOME/dotfiles"

if [ -e "$DOTFILES_HOME/.bash_aliases" ]; then
    source "$DOTFILES_HOME/.bash_aliases"
fi

# Corp aliases (symlinked to ~/.bash_aliases by install.sh, if present)
if [ -e ~/.bash_aliases ] && [ ! "$HOME/.bash_aliases" -ef "$DOTFILES_HOME/.bash_aliases" ]; then
   source ~/.bash_aliases
fi

export CLICOLOR=1
export LSCOLORS=gxBxhxDxCxhxhxhxhxcxcx
# MacPorts (macOS only)
[ -d /opt/local/bin ] && export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Ruby related
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/shims:$PATH"
