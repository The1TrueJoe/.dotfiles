#!/bin/bash

# Remove vimrc and plugins
rm ~/.vimrc
rm -rf ~/.vim/

# Remove source line
sed '/source\ /d' ~/.bashrc

# Remove trash
rm -r ~/.TRASH
