#!/usr/bin/env bash

composer self-update
composer global update

composer global require "codeception/codeception"
composer global require "phpunit/phpunit"
composer global require "phpunit/dbunit"
composer global require "phploc/phploc"
composer global require "phpmd/phpmd"
composer global require "squizlabs/php_codesniffer"
