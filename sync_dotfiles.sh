#!/bin/bash

if [ ! -d ~/.oh-my-zsh ]; then
	#install ohmyzsh
	echo "no oh-my-zsh"
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	mv ~/.zshrc ~/._zshrc
else
	echo "oh-myzsh exists"
fi

#backup ~
mkdir -p ~/.zsh_backup
mv ~/.zsh_git ~/.zsh_backup/.zsh_git
mv ~/.zsh_profile ~/.zsh_backup/.zsh_profile
mv ~/.zshrc ~/.zsh_backup/.zshrc
mv ~/.zsh_paths ~/.zsh_backup/.zsh_paths
mv ~/.wgetrc ~/.zsh_backup/.wgetrc
mv ~/.mongorc.js ~/.zsh_backup/.mongorc
mv ~/.multitailrc ~/.zsh_backup/.multitailrc
mv ~/.vim ~/.zsh_backup/.vim
mv ~/.vimrc ~/.zsh_backup/.vimrc
mv ~/.oh-my-zsh/themes/cam.zsh-theme ~/.zsh_backup/cam.zsh-theme

#relink
cp ~/Code/dotfiles/ohmyzsh/cam.zsh-theme ~/.oh-my-zsh/themes
ln -s ~/Code/dotfiles/.zsh_git ~/
ln -s ~/Code/dotfiles/.zsh_profile ~/
ln -s ~/Code/dotfiles/.zshrc ~/
ln -s ~/Code/dotfiles/.zsh_paths ~/
ln -s ~/Code/dotfiles/.wgetrc ~/
ln -s ~/Code/dotfiles/.mongorc.js ~/
ln -s ~/Code/dotfiles/.multitailrc ~/
ln -s ~/Code/dotfiles/.vim ~/
ln -s ~/Code/dotfiles/.vimrc ~/

source ~/.zshrc
