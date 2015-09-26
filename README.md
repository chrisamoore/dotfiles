# Chris's dotfiles
- Forked from [Paul Irish](https://github.com/paulirish/dotfiles) and Modded slightly


## Installation 

```bash
git clone git@github.com:chrisamoore/dotfiles.git && cd dotfiles && sh ./install_deps.sh
# I recommend using iterm2 and importing the cam theme from the iterm2 dir in the repo
```

## Installation dotfiles only

```bash
git clone git@github.com:chrisamoore/dotfiles.git && cd dotfiles && sh ./sync_dotfiles.sh
```

To update later on, just run the sync again.

## Terminal preview
![cam-term](http://camdesigns.net/images/term-cam.png)


<hr>


## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, ruby etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## Similar projects

I recommend getting a [`.jshintrc`](https://github.com/jshint/node-jshint/blob/master/.jshintrc) and [`.editorconfig`](http://editorconfig.org/) defined for all your projects.


## NPM things

```bash
npm install -g strongloop ionic yo bower
```

## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config, obv.

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `Brewfile - homebrew initialization
* `Caskfile - homebrew cask install apps initialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

