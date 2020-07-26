#!/bin/bash

# This script installs all the symlinks and such

# The following programs are relevant for a setup
# https://github.com/junegunn/fzf
# https://github.com/sharkdp/fd
# https://github.com/wting/autojump
# https://fishshell.com/
# https://github.com/alacritty/alacritty
# https://github.com/tmux/tmux
# https://github.com/syl20bnr/spacemacs
# https://github.com/chriskempson/base16

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$BASH_SOURCE")
# Absolute path this script is in, thus /home/user/bin
SP=$(dirname "$SCRIPT")

## Alacritty config
ln -s $SP/.alacritty.yml $HOME/.alacritty.yml 2&> /dev/null
echo "Please change the default terminal to alacritty"

## Fish config
ln -s $SP/config.fish $HOME/.config/fish/config.fish 2&> /dev/null

## Tmux config
ln -s $SP/.tmux.conf $HOME/.tmux.conf 2&> /dev/null
