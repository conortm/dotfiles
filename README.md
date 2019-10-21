# dotfiles

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup

Install: `brew install stow`

Run:

```bash
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git@github.com:conortm/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow git tmux zsh
chsh -s $(which zsh)
```

Inspired by [ericduran/dotfiles](https://github.com/ericduran/dotfiles) and [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles).
