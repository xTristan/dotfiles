#!/bin/bash
# Symlink dotfiles into $HOME. Existing files are moved to *.bak.
# Usage: ./install.sh [common|mac|linux ...]   (default: common)
set -eu
DOT="$(cd "$(dirname "$0")" && pwd)"

link() { # link <repo-relative-src> <dest>
  local src="$DOT/$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] || [ -L "$dest" ]; then
    [ "$dest" -ef "$src" ] && return 0
    mv "$dest" "$dest.bak" && echo "backed up $dest"
  fi
  ln -s "$src" "$dest" && echo "linked $dest"
}

common() {
  link zsh/.zshrc ~/.zshrc
  link zsh/.zprofile ~/.zprofile
  link .bashrc ~/.bashrc
  link .bash_profile ~/.bash_profile
  link git/.gitconfig ~/.gitconfig
  link .tmux.conf ~/.tmux.conf
  link emacs/.emacs ~/.emacs
  link emacs/common.el ~/.emacs.d/common.el
  # ~/.bash_aliases is intentionally not linked: on work machines it is
  # managed by the corp dotfiles; .bash_aliases here is sourced via $DOTFILES_HOME.
}
mac() {
  link .aerospace.toml ~/.aerospace.toml
  link .finicky.js ~/.finicky.js
  link ghostty/config ~/.config/ghostty/config
}
linux() {
  link i3/config ~/.config/i3/config
  link i3/betterlockscreenrc ~/.config/betterlockscreenrc
  link .Xresources ~/.Xresources
  link .Xdefaults ~/.Xdefaults
  link compton.conf ~/.config/compton.conf
  link gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
  echo "Manual (needs sudo): copy 40-libinput.conf to /etc/X11/xorg.conf.d/"
  echo "Manual: dconf load /com/gexperts/Tilix/ < tilix.dconf"
}

[ $# -eq 0 ] && set -- common
for t in "$@"; do "$t"; done
