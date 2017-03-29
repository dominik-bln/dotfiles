#!/usr/bin/env bash

brew update

brew install homebrew/completions/brew-cask-completion

brew cask install adobe-photoshop-lightroom
brew cask install adobe-photoshop-cc
brew cask install alfred
brew cask install anki
brew cask install apache-directory-studio
brew cask install atom
brew cask install backblaze
brew cask install cyberduck
brew cask install dash
brew cask install dropbox
brew cask install fantastical
brew cask install firefox
brew cask install flycut
brea cask install franz
brew cask install google-chrome
brew cask install iterm2
brew cask install lastpass
brew cask install licecap
brew cask install libreoffice
brew cask install mendeley-desktop
brew cask install mysqlworkbench
brew cask install omnifocus
brew cask install omnigraffle
brew cask install pgadmin4
brew cask install postman
brew cask install quitter
brew cask install rdm
brew cask install seil # Remap Tab Key for iTerm2
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install tomighty

brew cask install virtualbox
brew cask install vagrant

brew cleanup && brew cask cleanup
