#!/bin/bash

# up to you (me) if you want to run this as a file or copy paste at your leisure

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
# bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
# npm install -g nave

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# https://github.com/rupa/z
# z, oh how i love you
# cd ~/code
# git clone https://github.com/rupa/z.git
# chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile

# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
# cd ~/code
# git clone https://github.com/thebitguru/play-button-itunes-patch

# my magic photobooth symlink -> dropbox. I love it.
# first move Photo Booth folder out of Pictures
# then start Photo Booth. It'll ask where to put the library.
# put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)

#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

sh ./.osx

nvm install iojs
nvm alias default iojs
npm install -g strongloop ionic yo

sh ~/Code/dotfiles/Brewfile
sh ~/Code/dotfiles/Caskfile

# Setup Mongo
sudo mkdir -p /data/db
sudo chown -R $(whoami) /data

sh ~/Code/dotfiles/sync_dotfiles.sh

#setup Sublime
cp ~/Code/dotfiles/sublimeText3/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

