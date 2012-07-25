# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# User specific aliases and functions
export PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[01;33m\]$(__git_ps1)\[\e[00m\]\$ '

alias ls='ls --color=always'
alias pacman='pacman-color'
alias vi='vim'

JAVA_HOME=/usr/lib/jvm/java-7-openjdk/jre/
PATH=$PATH:$JAVA_HOME/bin:$HOME/bin

export PATH
