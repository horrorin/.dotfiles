#!/bin/bash

# .bash_aliases

# Fixes
alias sudo='sudo '
alias emacs='emacs -nw'
alias xsel='xsel --clipboard'

# System
alias l='ls -l'
alias ll='ls -l'
alias la='ls -la'
alias logout='gnome-session-quit'

# Editors
alias ne='emacs'

# Others
alias restart_httpd='sudo service httpd restart && sudo service php-fpm restart'

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

# Custom commands
function clean() {
    find $1 \( -name ".*~" -o -name "*~" -o -name "#*#" -o -name "#.*#" \) -ok rm {} \;;
}

alias clean='clean .'
alias cl='clean'
