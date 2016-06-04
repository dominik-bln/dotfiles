#!/usr/bin/env bash

#bash < <(curl -s https://raw.github.com/andycroll/macsetup/master/mac)

echo "[Config] Checking for SSH key, generating one if it doesn't exist ..."
  [[ -f ~/.ssh/id_rsa.pub ]] || ssh-keygen -t rsa

echo "[Config] Copying public key to clipboard. Paste it into your Github account"
  [[ -f ~/.ssh/id_rsa.pub ]] && cat ~/.ssh/id_rsa.pub | pbcopy
  open https://github.com/account/ssh

echo "[Install] Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Ghostery"
open http://www.ghostery.com/

echo "Symlink SSH config"
ln -s ~/Dropbox/Sync/configs/ssh ~/.ssh/config


ln -s ~/Dropbox/Backup/Books ~/Documents
ln -s ~/Dropbox/Backup/Fonts ~/Documents
ln -s ~/Dropbox/Backup/Info ~/Documents
ln -s ~/Dropbox/Backup/Presentations ~/Documents
ln -s ~/Dropbox/Backup/Projects ~/Documents

ln -s ~/Dropbox/Text ~/Documents

ln -s ~/Dropbox/Pictures/Desktop ~/Pictures
ln -s ~/Dropbox/Pictures/Icons ~/Pictures
ln -s ~/Dropbox/Pictures/Web ~/Pictures
