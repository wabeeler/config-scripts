#!/bin/bash

#Application Installs
sudo apt-get install git tmux wget silversearcher-ag

# dotfiles
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone wabeeler/dotfiles
$HOME/.homesick/repos/homeshick/bin/homeshick link dotfiles

$HOME/.homesick/repos/homeshick/bin/homeshick clone gmarik/Vundle.vim
$HOME/.homesick/repos/homeshick/bin/homeshick clone tmux-plugins/tpm
