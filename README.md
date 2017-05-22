# dotfiles

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

```bash
brew install stow
git clone git@github.com:conortm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow git
stow tmux

# Fish shell
brew install fish
stow fish
chsh -s `which fish`
```

Inspired by [ericduran/dotfiles](https://github.com/ericduran/dotfiles).
