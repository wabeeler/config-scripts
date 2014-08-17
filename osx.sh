#!/bin/sh

# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# rvm
\curl -sSL https://get.rvm.io | bash -s stable

brew install tmux
brew install kdiff3
brew install ctags
brew install maven
brew install git
brew install tree
brew install wget
brew install nmap
brew install vim --override-system-vi
brew install irssi
brew install git


#brew cask
brew install caskroom/cask/brew-cask
brew cask install google-chrome
brew cask install spectacle
brew cask install evernote
brew cask install flux
brew cask install crashplan
brew cask install boot2docker
brew cask install virtualbox
brew cask install vagrant
brew cask install iterm2
brew cask install transmission
brew cask install vlc
