#!/bin/sh

cd ~/

mkdir bak/

mv .bashrc bak/.bashrc
ln -s ~/dotfiles/bashrc ~/.bashrc

mv .vimrc bak/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

mv .tmux.conf bak/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

mv .gitconfig bak/.gitconfig
ls -s ~/dotfiles/gitconfig ~/.gitconfig
