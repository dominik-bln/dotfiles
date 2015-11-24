#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install caskroom/cask/brew-cask
brew update && brew upgrade brew-cask

brew install homebrew/completions/brew-cask-completion

brew cask install virtualbox
brew cask install google-chrome
brew cask install vagrant
brew cask install dockertoolbox
brew cask install iterm2
brew cask install spotify
brew cask install firefox
brew cask install skype
brew cask install slack
brew cask install atom
brew cask install omnigraffle
brew cask install adobe-photoshop-cc
brew cask install adobe-photoshop-lightroom
brew cask install mysqlworkbench
brew cask install mendeley-desktop

brew cleanup && brew cask cleanup
