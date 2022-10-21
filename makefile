# Dotfiles Makefile

# Update dotfiles
update:
	cp ./vim/vimrc ~/.vimrc
	cp -r ./vim/config ~/.vim/config

# Install vim plugins
update-plugins:
	vim +PluginInstall +qall

# Setup vim plugins
vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	make update-plugins
	make update