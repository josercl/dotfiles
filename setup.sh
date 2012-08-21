#!/bin/bash

CFG_DIR=$PWD

ln -s $CFG_DIR/bashrc ~/.bashrc
ln -s $CFG_DIR/Xresources ~/.Xresources

#configuracion global de git
ln -s $CFG_DIR/git/gitconfig ~/.gitconfig
ln -s $CFG_DIR/git/gitignore ~/.gitignore

#Configuracion de conky
ln -s $CFG_DIR/conky/ ~/.conky
ln -s $CFG_DIR/conky/conkyrc ~/.conkyrc

#Configuracion de MPD y ncmpcpp (MP3)
ln -s $CFG_DIR/mpd ~/.mpd
ln -s $CFG_DIR/ncmpcpp ~/.ncmpcpp

#Configuracion de vi con perfil de colores y plugins
ln -s $CFG_DIR/vim ~/.vim
ln -s $CFG_DIR/vimrc ~/.vimrc

#Configuracion de openbox
ln -s $CFG_DIR/openbox/ob-randrrc ~/.ob-randrrc
ln -s $CFG_DIR/openbox ~/.config/openbox
ln -s $CFG_DIR/tint2 ~/.config/tint2

#Tema reNIX de openbox
ln -s $CFG_DIR/themes/reNIX/openbox-3 ~/.themes/reNIX/openbox-3
