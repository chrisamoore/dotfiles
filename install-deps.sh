#!/bin/bash
sh ./.osx

# up to you (me) if you want to run this as a file or copy paste at your leisure

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
# bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

sh ~/Code/dotfiles/Brewfile

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/antigen.zsh
# source ~/antigen.zsh

sh ~/Code/dotfiles/Caskfile
sh ~/Code/dotfiles/sync_dotfiles.sh

# Setup NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

nvm install node
nvm alias default node

src

 npm i -g yo && \
 npm i -g generator-loopback \
          pm2 \
          npm-check-updates \
          http-server

echo "run 'docker-machine create -d virtualbox --virtualbox-host-dns-resolver --virtualbox-memory=8192 --virtualbox-cpu-count=2 --engine-insecure-registry=$DOCKER_REGISTRY dev'"

#setup Sublime
ln -s ~/Code/dotfiles/sublimeText3/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

touch ~/.gitconfig.local

echo " Add this to your ~/.gitconfig.local file:

# This is Git's per-user configuration file.
[core]
# Please adapt and uncomment the following lines:
  user = username
  name = Your name
  email = you@email.com
[user]
  name = Your name
  email = you@email.com
"
touch ~/.npmrc

echo " Run this to authenticate into your npm registry
npm set registry npm.company.com
npm set strict-ssl false
npm login
"

echo "Add this to your ~/.zsh_machine
export DOCKER_REGISTRY=docker.company.com:5000
"

echo "Add this to your ~/.zsh_machine
export KUBERNETES=http://kuber-master.company.com:8080
"

echo "Create your docker machine:
docker-machine create -d virtualbox --virtualbox-host-dns-resolver --virtualbox-memory=8192 --virtualbox-cpu-count '2' --engine-insecure-registry=$DOCKER_REGISTRY dev"
