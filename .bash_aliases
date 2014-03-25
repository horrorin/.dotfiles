#!/bin/bash

# .bash_aliases

# Fixes
alias sudo='sudo '
alias emacs='emacs -nw'

# System
alias l='ls -l'
alias ll='ls -l'
alias la='ls -la'

# Editors
alias ne='emacs'

# Symfony
function symfony() {
    if [ -f ./app/console ]; then
	php ./app/console $*;
	return 0;
    else
	echo -e "\e[0;38;31mError: You aren't in a Symfony directory ! \e[0m";
	return 1;
    fi
}
alias sf='symfony'

# Commands
function clean() {
    find $1 \( -name ".*~" -o -name "*~" -o -name "#*#" -o -name "#.*#" \) -ok {} \;;
}
alias clean='clean .'
alias cl='clean'

alias clean_all='sudo clean /'
alias cla='clean_all'
