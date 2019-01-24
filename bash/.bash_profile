#!/bin/bash

# FROM https://github.com/jessfraz/dotfiles/blob/master/.bash_profile

# Load bashrc and other files.
for file in ~/.{bashrc,bash_prompt,bash_aliases,bash_functions,bash_path,dockerfunc,extra,exports}; do
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
export BREW_PREFIX="$(brew --prefix)"
test -f "${BREW_PREFIX}/etc/bash_completion" && source "${BREW_PREFIX}/etc/bash_completion"

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

# gcloud
export GCLOUD_SDK_PREFIX="${BREW_PREFIX}/Caskroom/google-cloud-sdk"
test -d "${GCLOUD_SDK_PREFIX}" && source "${GCLOUD_SDK_PREFIX}/latest/google-cloud-sdk/path.bash.inc"
test -d "${GCLOUD_SDK_PREFIX}" && source "${GCLOUD_SDK_PREFIX}/latest/google-cloud-sdk/completion.bash.inc"

# iTerm 2
test -f "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
