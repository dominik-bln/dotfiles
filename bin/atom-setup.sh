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
# a package to display colors in project and files.
apm install pigments
apm install todo-show
apm install atom-beautify
apm install auto-detect-indentation
apm install hyperclick
apm install linter
apm install linter-ui-default
apm install highlight-selected
apm install project-manager
apm install zentabs

############
# Languages
############

# Styling
apm install linter-stylelint
apm install stylus

# PHP
apm install linter-phpcs
apm install php-twig
apm install php-integrator-base
apm install php-integrator-autocomplete-plus
apm install php-integrator-annotations
apm install php-integrator-call-tips
apm install php-integrator-navigation
apm install php-integrator-tooltips

# JavaScript
apm install atom-ternjs
apm install js-hyperclick
apm install language-babel
apm install language-vue
apm install vue-hyperclick
apm install vue2-autocomplete

# Python
apm install autocomplete-python
apm install linter-python-pep8
apm install python-autopep8
apm install linter-flake8

# XML
apm install autocomplete-xml
