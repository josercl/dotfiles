# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash completion
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
	source /usr/share/git/completion/git-prompt.sh
fi

# User specific aliases and functions
export PS1='\[\e[01;32m\]\u@\h\[\e[00m\] \[\e[01;34m\]\w\[\e[01;33m\]$(__git_ps1) \[\e[01;32m\]\$\[\e[00m\] '

alias ls='ls --color=always'
alias vi='vim'

JAVA_HOME=/usr/lib/jvm/java-7-openjdk
PATH=$PATH:$JAVA_HOME/bin:$HOME/bin:$HOME/android-sdk-linux/platform-tools:$HOME/android-sdk-linux/tools

LS_COLORS="or=00;31:ow=01;44;32:ex=01;33:*.iso=00;34:*.mp3=00;33:*.png=00;35:*.jpg=00;35:*.jpeg=00;35:*.JPG=00;35:*.gif=00;35"

export PATH
export LS_COLORS
export EDITOR=vi
