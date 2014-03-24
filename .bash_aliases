#!/bin/bash

# .bash_aliases

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

# Fixes
alias emacs='emacs -nw'
alias sudo='sudo '
