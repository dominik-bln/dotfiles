#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php70

# Install other useful binaries.
brew install ack
brew install ansible
brew install codeception
brew install composer
brew install docker
brew install git
brew install git-open
brew install git-flow
brew install git-lfs
brew install git-standup
brew install gource
brew install imagemagick --with-webp
brew install jmeter
brew install lynx
brew install mypy
brew install npm
brew install p7zip
brew install phantomjs
brew install phploc
brew install phpmd
brew install phpunit
brew install ssh-copy-id
brew install symfony-installer
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup
