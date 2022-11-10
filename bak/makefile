# Dotfiles Makefile

# Update dotfiles
update:
	git pull
	cp ./vim/vimrc ~/.vimrc
	cp -r ./vim/config ~/.vim/config

# Install vim plugins
update-plugins:
	make update
	vim +PluginInstall +qall

# Setup vim plugins
vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	make update-plugins
