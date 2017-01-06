#!/usr/bin/env bash

# When encountering 'Operation not permitted - /usr/bin/launchy'
# errors, see:
# https://github.com/CocoaPods/CocoaPods/issues/3692

sudo gem update --system

sudo gem install -n /usr/local/bin bundler
sudo gem install -n /usr/local/bin travis
sudo gem install -n /usr/local/bin sass
