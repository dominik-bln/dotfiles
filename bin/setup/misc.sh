#!/usr/bin/env bash

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
