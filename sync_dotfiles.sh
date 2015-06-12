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

mv ~/.zsh_docker ~/.zsh_backup/
mv ~/.zsh_git ~/.zsh_backup/
mv ~/.zsh_node ~/.zsh_backup/
mv ~/.zsh_paths ~/.zsh_backup/
mv ~/.zsh_profile ~/.zsh_backup/
mv ~/.zsh_ruby ~/.zsh_backup/
mv ~/.zsh_vagrant ~/.zsh_backup/
mv ~/.zshrc ~/.zsh_backup/

mv ~/.mongorc.js ~/.zsh_backup/
mv ~/.multitailrc ~/.zsh_backup/
mv ~/.vim ~/.zsh_backup/
mv ~/.vimrc ~/.zsh_backup/
mv ~/.wgetrc ~/.zsh_backup/
mv ~/.oh-my-zsh/themes/cam.zsh-theme ~/.zsh_backup/

#relink
ln -s ~/Code/dotfiles/ohmyzsh/cam.zsh-theme ~/.oh-my-zsh/themes

ln -s ~/Code/dotfiles/.zsh_docker ~/
ln -s ~/Code/dotfiles/.zsh_git ~/
ln -s ~/Code/dotfiles/.zsh_node ~/
ln -s ~/Code/dotfiles/.zsh_paths ~/
ln -s ~/Code/dotfiles/.zsh_profile ~/
ln -s ~/Code/dotfiles/.zsh_ruby ~/
ln -s ~/Code/dotfiles/.zsh_vagrant ~/
ln -s ~/Code/dotfiles/.zshrc ~/

ln -s ~/Code/dotfiles/.mongorc.js ~/
ln -s ~/Code/dotfiles/.multitailrc ~/
ln -s ~/Code/dotfiles/.vim ~/
ln -s ~/Code/dotfiles/.vimrc ~/
ln -s ~/Code/dotfiles/.wgetrc ~/

source ~/.zshrc
