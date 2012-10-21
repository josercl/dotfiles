#!/bin/bash

CFG_DIR=$PWD

ln -s $CFG_DIR/bashrc ~/.bashrc -f
ln -s $CFG_DIR/Xresources ~/.Xresources -f

#configuracion global de git
ln -s $CFG_DIR/git/gitconfig ~/.gitconfig -f
ln -s $CFG_DIR/git/gitignore ~/.gitignore -f

#Configuracion de conky
ln -s $CFG_DIR/conky/circles ~/.conky -f
ln -s $CFG_DIR/conky/circles/conkyrc ~/.conkyrc -f

#Configuracion de MPD y ncmpcpp (MP3)
ln -s $CFG_DIR/mpd ~/.mpd -f
ln -s $CFG_DIR/ncmpcpp ~/.ncmpcpp -f

#Configuracion de vi con perfil de colores y plugins
ln -s $CFG_DIR/vim ~/.vim -f
ln -s $CFG_DIR/vimrc ~/.vimrc -f

#Configuracion de openbox
ln -s $CFG_DIR/openbox/ob-randrrc ~/.ob-randrrc -f

if [ ! -d ~/.config ];then
mkdir ~/.config;
fi 

ln -s $CFG_DIR/openbox ~/.config/openbox -f
ln -s $CFG_DIR/tint2 ~/.config/tint2 -f

#Tema reNIX de openbox
if [ ! -d ~/.themes/reNIX ];then
mkdir -p ~/.themes/reNIX
fi

ln -s $CFG_DIR/themes/reNIX/openbox-3 ~/.themes/reNIX/openbox-3 -f
ln -s $CFG_DIR/themes/reNIX-ACID ~/.themes/reNIX-ACID -f
