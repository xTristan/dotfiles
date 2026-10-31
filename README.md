# dotfiles

```bash
git clone https://github.com/xTristan/dotfiles ~/dotfiles
~/dotfiles/install.sh common        # shells, git, tmux, emacs
~/dotfiles/install.sh mac           # aerospace, finicky, ghostty
~/dotfiles/install.sh linux         # i3, X, compton, gtk
```

Existing files are moved to `*.bak`. Machine-specific shell config goes in
`~/.zshrc.local` (untracked). Work-only config is loaded from
`$CORP_DOTFILES_HOME` when present.

Other files (`com.googlecode.iterm2.plist`, `iterm2_default_profile.json`,
`tilix.dconf`, `xorg.conf`) are import/reference copies, not symlinked.
