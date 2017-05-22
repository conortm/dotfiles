. ~/.config/fish/aliases.fish

set -g default_user cmcnamara

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
set GOROOT /usr/local/opt/go/libexec
set GOPATH $HOME/workspace/golang
set -gx PATH $PATH $GOPATH/bin $GOROOT/bin
