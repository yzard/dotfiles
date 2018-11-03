#!/bin/bash

# On Ubuntu 16.04, liblua5.1-dev is the lua dev package name not lua5.1-dev
sudo apt install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev liblua5.1 liblua5.1-dev libperl-dev git cmake

sudo apt remove -y vim vim-runtime gvim

[ -d ~/.vim ] && mv ~/.vim ~/bak/ 
cp -pr vim ~/.vim

mkdir ~/tmp/
cd ~/tmp
sudo rm -rf vim

git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
	        --enable-rubyinterp=yes \
	        --enable-pythoninterp=yes \
	        --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \ # pay attention here check directory correct
	        #--enable-python3interp=yes \
	        #--with-python3-config-dir=/usr/lib/python3.5/config-x86_64-linux-gnu \
	        --enable-perlinterp=yes \
	        --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
	        --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

sudo apt install -y checkinstall
cd ~/tmp/vim
sudo checkinstall -y

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe && ./install.sh
