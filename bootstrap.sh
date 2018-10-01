#!/bin/sh

cd ~/
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

[ -z "~/.ssh" ] && cp -pr ~/dotfiles/ssh ~/.ssh 
