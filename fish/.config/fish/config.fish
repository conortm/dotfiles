. ~/.config/fish/aliases.fish

set -g default_user cmcnamara

# On startup, write out everything installed via Homebrew:
brew list > ~/Dropbox/dotfiles/brew/brew-list.txt
brew cask list > ~/Dropbox/dotfiles/brew/brew-cask-list.txt

# Update path
set -gx PATH (yarn global bin) $PATH

# bobthefish theme
#set -g theme_color_scheme solarized
set -g theme_date_format "+%H:%M"
# set -g theme_nerd_fonts yes
# set -g theme_powerline_fonts no

# Homebrew
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Go
set -xg GOROOT /usr/local/opt/go/libexec $GOROOT
set -xg GOPATH $HOME/workspace/golang $GOPATH
set -xg PATH $GOPATH/bin $GOROOT/bin $PATH
