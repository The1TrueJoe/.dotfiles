#!/bin/bash

# Script variables
CURR_DIR=$(pwd)
CURR_OS=$(uname)

# Check OS
if [[ "$CURR_OS" != *"Linux"* ]]; then
    echo "ERROR --> Incorrect OS detected for this target!" > linuxsetup.log
    exit
fi

# Backup vimrc
FILE=~/.vimrc
if [[ -f "$FILE" ]]; then
    mv ~/.vimrc ~/.bup_vimrc
    echo "LOG --> Current .vimrc changed to .bup_vimrc" >> linuxsetup.log
fi

# Move config files around.
cp ./etc/vimrc ~/.vimrc
cp -r ./etc/vim/config ~/.vim/config

# Install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Source bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
