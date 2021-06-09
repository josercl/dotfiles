#!/bin/bash

CFG_DIR=$PWD

ln -sfn $CFG_DIR/bashrc ~/.bashrc
ln -sfn $CFG_DIR/Xresources ~/.Xresources

#configuracion global de git
ln -sfn $CFG_DIR/git/gitconfig ~/.gitconfig
ln -sfn $CFG_DIR/git/gitignore ~/.gitignore

#Configuracion de MPD y ncmpcpp (MP3)
ln -sfn $CFG_DIR/mpd ~/.mpd
ln -sfn $CFG_DIR/ncmpcpp ~/.ncmpcpp

#Configuracion de vi con perfil de colores y plugins
ln -sfn $CFG_DIR/vim ~/.vim
ln -sfn $CFG_DIR/vimrc ~/.vimrc

#Configuracion "basica" de tmux
ln -sfn $CFG_DIR/tmux.conf ~/.tmux.conf

[ -d ~/.config ] || mkdir ~/.config

#Configuracion de i3
ln -sfn $CFG_DIR/i3 ~/.config/i3

ln -sfn $CFG_DIR/alacritty/alacritty-gruvbox-dark-soft.yml ~/.alacritty.yml

#Configuracion de polybar
ln -sfn $CFG_DIR/polybar ~/.config/polybar
chmod +x $CFG_DIR/polybar/scripts/*
