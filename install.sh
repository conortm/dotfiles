#!/usr/bin/env bash
sudo apt install -y stow
stow -t ~ bash tmux
source ~/.bashrc

npm install -g @google/gemini-cli
