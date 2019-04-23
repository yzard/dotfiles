#!/bin/sh

[ ! -d ~/bak ] && mkdir bak/

for file in `ls ~/dotfiles/configs`;
do
    dotfile=".${file}"

    [ -L ~/${dotfile} ] && unlink ~/${dotfile}
    [ -f ~/${dotfile} ] && mv ~/${dotfile} bak/

    ln -s ~/dotfiles/configs/${file} ~/${dotfile}
done
