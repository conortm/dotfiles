#!/bin/bash

# FROM https://github.com/jessfraz/dotfiles/blob/master/.bash_profile

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bashrc,bash_prompt,bash_aliases,functions,path,dockerfunc,extra,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

# source kubectl bash completion
if hash kubectl 2>/dev/null; then
	# shellcheck source=/dev/null
	source <(kubectl completion bash)
fi

# END https://github.com/jessfraz/dotfiles/blob/master/.bash_profile

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Vim
export EDITOR=vim

# Go
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="${HOME}/.go"
export PATH=${PATH}:${GOPATH}/bin:${GOROOT}/bin

# update cdpath
export CDPATH=${CDPATH}:${HOME}/workspace:${GOPATH}/src/github.com/conortm

# GPG
export GPG_TTY=$(tty)
