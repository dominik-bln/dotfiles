#!/usr/bin/env bash

# Install configuration and packages for Atom
# @todo https://discuss.atom.io/t/installed-packages-list-into-single-file/12227/11

#########
# Themes
#########
apm install seti-ui
apm install monokai-seti

##################
# Global Packages
##################

# autcompletion for docblocks https://atom.io/packages/docblockr
apm install docblockr
# A package to display colors in project and files.
apm install pigments
apm install todo-show
apm install atom-beautify
apm install auto-detect-indentation
apm install hyperclick
apm install file-hyperclick
apm install linter
apm install higlight-selected
apm install refactor
apm install linter-write-good
apm install project-plus
apm install dash

############
# Languages
############

# Styling
apm install linter-stylelint
apm install stylus

# HTML
apm install emmet

# PHP
apm install linter-phpcs
apm install php-twig
apm install atom-autocomplete-php
apm install hyperclick-php

# JavaScript
apm install js-hyperclick
apm install language-vue
apm install vue-hyperclick

# Python
apm install autocomplete-python
apm install linter-python-pep257
apm install linter-python-pep8
apm install python-autopep8
