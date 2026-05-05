#!/usr/bin/env bash
sudo apt-get update && sudo apt-get install -y stow
stow -t ~ bash tmux
source ~/.bashrc

npm install -g @google/gemini-cli
sudo mkdir -p /etc/gemini-cli
sudo stow -t /etc/gemini-cli gemini-cli
