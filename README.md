# dotfiles

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh), then run:

```bash
brew install stow
git clone git@github.com:conortm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow git
stow tmux
stow zsh
chsh -s `which zsh`
```

Inspired by [ericduran/dotfiles](https://github.com/ericduran/dotfiles).
