# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash completion
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
	source /usr/share/git/completion/git-prompt.sh
fi

COLOR_NONE="\[\033[0m\]"  # unsets color to term's fg color

# regular colors
COLOR_BLACK="\[\033[0;30m\]"
COLOR_RED="\[\033[0;31m\]"
COLOR_GREEN="\[\033[0;32m\]"
COLOR_YELLOW="\[\033[0;33m\]"
COLOR_BLUE="\[\033[0;34m\]"
COLOR_MAGENTA="\[\033[0;35m\]"
COLOR_CYAN="\[\033[0;36m\]"
COLOR_WHITE="\[\033[0;37m\]"

# emphasized (bolded) colors
COLOR_BLACK_BOLD="\[\033[1;30m\]"
COLOR_RED_BOLD="\[\033[1;31m\]"
COLOR_GREEN_BOLD="\[\033[1;32m\]"
COLOR_YELLOW_BOLD="\[\033[1;33m\]"
COLOR_BLUE_BOLD="\[\033[1;34m\]"
COLOR_MAGENTA_BOLD="\[\033[1;35m\]"
COLOR_CYAN_BOLD="\[\033[1;36m\]"
COLOR_WHITE_BOLD="\[\033[1;37m\]"

# background colors
COLOR_BLACK_BG="\[\033[40m\]"
COLOR_RED_BG="\[\033[41m\]"
COLOR_GREEN_BG="\[\033[42m\]"
COLOR_YELLOW_BG="\[\033[43m\]"
COLOR_BLUE_BG="\[\033[44m\]"
COLOR_MAGENTA_BG="\[\033[45m\]"
COLOR_CYAN_BG="\[\033[46m\]"
COLOR_WHITE_BG="\[\033[47m\]"

GIT='$(__git_ps1)'
export PS1="${COLOR_GREEN_BOLD}\u@\h ${COLOR_BLUE_BOLD}\w${COLOR_YELLOW_BOLD}${GIT}${COLOR_GREEN_BOLD} \$${COLOR_NONE} "

alias ls='ls --color=always'
alias vi='vim'
alias yaourt='yaourt --aur-url https://aur4.archlinux.org'

JAVA_HOME=/usr/lib/jvm/java-default-runtime
PATH=$PATH:$JAVA_HOME/bin:$HOME/bin:$HOME/inventos/android/android-sdk-linux/platform-tools:$HOME/inventos/android/android-sdk-linux/tools

LS_COLORS="or=00;31:ow=01;44;32:ex=01;33:*.iso=00;34:*.mp3=00;33:*.png=00;35:*.jpg=00;35:*.jpeg=00;35:*.JPG=00;35:*.gif=00;35"

export PATH
export LS_COLORS
export EDITOR=vi
