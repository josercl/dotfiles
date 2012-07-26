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

LS_COLORS="rs=0:di=01;94:ln=01;37:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=05;31:mi=01;31:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=46;1;32:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.ppm=01;35:*.tga=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mpg=01;35:*.mpeg=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.flac=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;37:*.mpc=00;36:*.ogg=00;36:*.wav=01;33:*.oga=00;36:*.spx=00;36:*.xspf=00;36:*.iso=00;34:*.torrent=00;34"

export PATH
export LS_COLORS
