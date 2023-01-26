#!/bin/sh

# Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# rvm
\curl -sSL https://get.rvm.io | bash -s stable

brew install tmux
brew install kdiff3
#brew install ctags
#brew install maven
brew install git
brew install tree
brew install wget
brew install nmap
brew install vim
# brew install lastpass-cli
# brew install irssi
# not sure why this would be needed twice
# brew install git
#brew install reattach-to-user-namespace
brew install the_silver_searcher

#brew cask
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask bettertouchtool
#brew cask install flux
#brew cask install boot2docker
#brew cask install virtualbox
#brew cask install vagrant

# dotfiles
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
$HOME/.homesick/repos/homeshick/bin/homeshick clone wabeeler/dotfiles
$HOME/.homesick/repos/homeshick/bin/homeshick link dotfiles

$HOME/.homesick/repos/homeshick/bin/homeshick clone gmarik/Vundle.vim
$HOME/.homesick/repos/homeshick/bin/homeshick clone tmux-plugins/tpm

# iTerm2 ColorSchemes
$HOME/.homesick/repos/homeshick/bin/homeshick clone mbadolato/iTerm2-Color-Schemes.git

# powerline fonts
$HOME/.homesick/repos/homeshick/bin/homeshick clone powerline/fonts
ln -s $HOME/.homeshick/repos/fonts ~/powerline-fonts

# System properties
#printf "System - Disable boot sound effects\n"
#sudo nvram SystemAudioVolume=" "

printf "System - Reveal IP address, hostname, OS version, etc. when clicking the login window clock\n"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

#printf "System - Disable automatic termination of inactive apps\n"
#defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

printf "System - Expand save panel by default\n"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

#printf "System - Disable the 'Are you sure you want to open this application?' dialog\n"
#defaults write com.apple.LaunchServices LSQuarantine -bool false

printf "System - Require password immediately after sleep or screen saver begins\n"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "System - Avoid creating .DS_Store files on network volumes\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
defaults write com.apple.BezelServices kDim -bool true

printf "Keyboard - Turn off keyboard illumination when computer is not used for 5 minutes\n"
defaults write com.apple.BezelServices kDimTime -int 300

printf "Keyboard - Enable keyboard access for all controls\n"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

printf "Keyboard - Set a fast keyboard repeat rate\n"
defaults write NSGlobalDomain KeyRepeat -int 0

printf "Dock - Remove all default app icons\n"
defaults write com.apple.dock persistent-apps -array

printf "Dock - Automatically hide and show\n"
defaults write com.apple.dock autohide -bool true

printf "Dock - Don’t show Dashboard as a Space\n"
defaults write com.apple.dock "dashboard-in-overlay" -bool true

printf "iCloud - Save to disk by default\n"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

printf "Finder - Show the $HOME/Library folder\n"
chflags nohidden $HOME/Library

printf "Finder - Show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles -bool true

printf "Finder - Show filename extensions\n"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Finder - Disable the warning when changing a file extension\n"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "Finder - Show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true

printf "Finder - Show status bar\n"
defaults write com.apple.finder ShowStatusBar -bool true

printf "Finder - Display full POSIX path as window title\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf "Finder - Use list view in all Finder windows\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

#printf "Finder - Allow quitting via ⌘ + Q; doing so will also hide desktop icons\n"
#defaults write com.apple.finder QuitMenuItem -bool true

#printf "Finder - Disable the warning before emptying the Trash\n"
#defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "Finder - Allow text selection in Quick Look\n"
defaults write com.apple.finder QLEnableTextSelection -bool true

printf "Time Machine - Prevent prompting to use new hard drives as backup volume\n"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

printf "Printer - Expand print panel by default\n"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

printf "Printer - Automatically quit printer app once the print jobs complete\n"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
