#!/bin/bash

cd $(dirname $BASH_SOURCE)
BASE=$(pwd)

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

# link everything
if [ $1 == "vim" ]; then
  ln -sf $BASE ~/.vim
  ln -sf "$BASE/init.vim" ~/.vimrc
fi

if [ $1 == "nvim" ]; then
  config=${XDG_CONFIG_HOME:=$HOME/.config}

  mkdir -p $config
  ln -sf `pwd` "$config/nvim"
fi

# install all our plugins
$1 +PlugInstall +qall &> /dev/null

