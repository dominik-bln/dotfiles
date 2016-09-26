#!/usr/bin/env bash

# This script installs Composer packages that should be globally
# accessible. Composers binary folder can be added to $PATH with:
# export PATH="$HOME/.composer/vendor/bin:$PATH"
composer self-update
composer global update

composer global require "codeception/codeception"
composer global require "phpunit/phpunit"
composer global require "phpunit/dbunit"
composer global require "phploc/phploc"
composer global require "phpmd/phpmd"
composer global require "squizlabs/php_codesniffer"
