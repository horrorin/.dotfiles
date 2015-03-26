#!/bin/bash

# .bash_aliases

# Fixes
alias sudo='sudo '
alias emacs='emacs -nw'

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

 # Capifony
function cap() {
    cap=`whereis cap | awk '{print $2}'`;
    $cap $*;
    project="Project";
    if [ -f ./composer.json ]
    then
        project=`grep '"name"' ./composer.json | awk -F'"' '{print $4}'`
    fi

    if [ $? -eq 0 ];
    then
        notify-send -u normal -t 5000 "Capifony" "$project sucessfully deploy on $1";
    else
        notify-send -u critical -t 5000 "Capifony" "Fail to deploy $project on $1";
    fi
}

 # Composer
function composer() {
    composer=`whereis composer | awk '{print $2}'`;
    $composer $*;
    project="Project";
    if [ -f ./composer.json ]
    then
        project=`grep '"name"' ./composer.json | awk -F'"' '{print $4}'`
    fi

    if [ $? -eq 0 ];
    then
        notify-send -u normal -t 5000 "Composer" "$project sucessfully $1 dependencies";
    else
        notify-send -u critical -t 5000 "Composer" "Fail to $1 $project dependencies";
    fi
}
