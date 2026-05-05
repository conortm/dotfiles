#!/usr/bin/env bash
sudo apt-get update && sudo apt-get install -y stow
stow -t ~ bash tmux
source ~/.bashrc

npm install -g @google/gemini-cli
mkdir ~/.gemini
stow -t ~/.gemini gemini
