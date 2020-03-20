#!/bin/bash

CFG_DIR=$PWD

ln -s $CFG_DIR/bashrc ~/.bashrc -f
ln -s $CFG_DIR/Xresources ~/.Xresources -f

#configuracion global de git
ln -s $CFG_DIR/git/gitconfig ~/.gitconfig -f
ln -s $CFG_DIR/git/gitignore ~/.gitignore -f

#Configuracion de conky
ln -s $CFG_DIR/conky/text ~/.conky -f
ln -s $CFG_DIR/conky/text/conkyrc ~/.conkyrc -f

#Configuracion de MPD y ncmpcpp (MP3)
ln -s $CFG_DIR/mpd ~/.mpd -f
ln -s $CFG_DIR/ncmpcpp ~/.ncmpcpp -f

#Configuracion de vi con perfil de colores y plugins
ln -s $CFG_DIR/vim ~/.vim -f
ln -s $CFG_DIR/vimrc ~/.vimrc -f

#Configuracion "basica" de tmux
ln -s $CFG_DIR/tmux.conf ~/.tmux.conf -f

if [ ! -d ~/.config ];then
mkdir ~/.config;
fi 

#Configuracion de i3
ln -s $CFG_DIR/i3 ~/.config/i3 -f

#Configuracion de polybar
ln -s $CFG_DIR/polybar ~/.config/polybar -f
chmod 755 $CFG_DIR/polybar/scripts/*
ln -s $CFG_DIR/polybar/scripts/* ~/bin -f
