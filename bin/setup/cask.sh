#!/usr/bin/env bash

brew install caskroom/cask/brew-cask
brew update && brew upgrade brew-cask

brew install homebrew/completions/brew-cask-completion

brew cask install adobe-photoshop-lightroom
brew cask install adobe-photoshop-cc
brew cask install atom
brew cask install backblaze
brew cask install cyberduck
brew cask install dash
brew cask install dockertoolbox
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install karabiner # to reverse scroll direction for external mouse only
brew cask install lastpass
brew cask install libreoffice
brew cask install mendeley-desktop
brew cask install mysqlworkbench
brew cask install omnigraffle
brew cask install rdm # Redis Desktop Manager
brew cask install seil # Remap Tab Key
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox

brew cleanup && brew cask cleanup
