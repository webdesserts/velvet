#!/bin/bash

# help text
if [ $# -lt 1 ] || [ $1 == "-h" ]; then
    echo "How to use: ./install.sh [vim | nvim]"
    exit 1
fi

if [ ! -e init.vim ]; then
    echo "./install.sh expects you to be in the velvet directory when ran"
    exit 1
fi

# require the user to specify which version they are using
if [ $1 != "vim" ] && [ $1 != "nvim" ]; then
    echo "Please specify whether you are using \"vim\" or \"nvim\""
    exit 1
fi

if [ $1 == "vim" ]; then
  ln -sf `pwd` ~/.vim
  ln -sf `pwd`/init.vim ~/.vimrc
fi

if [ $1 == "nvim" ]; then
  mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
  ln -sf `pwd` ${XDG_CONFIG_HOME:=$HOME/.config}/nvim
fi

# link everything


# install all our plugins
$1 +PlugInstall +qall &> /dev/null

