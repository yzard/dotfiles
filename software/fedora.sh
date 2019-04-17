#!/bin/bash

[ -d ~/.vim ] && mv ~/.vim ~/bak/ 
cp -pr vim/* ~/.vim/

git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe && ./install.sh
