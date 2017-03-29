#!/usr/bin/env bash

# This script installs Composer packages that should be globally
# accessible. Composers binary folder can be added to $PATH with:
# export PATH="$HOME/.composer/vendor/bin:$PATH"
composer self-update
composer global update
