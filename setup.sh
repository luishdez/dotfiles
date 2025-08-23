#!/bin/bash
cd "$(dirname "$0")"

echo "Stowing all packages..."
stow -v -t $HOME env
stow -v -t $HOME ssh
stow -v -t $HOME zsh
stow -v -t $HOME git
stow -v -t $HOME zed
stow -v -t $HOME kube
