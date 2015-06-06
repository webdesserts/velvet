#!/bin/bash

# help text
if [ $# -lt 1 ] || [ $1 == "-h" ]; then
    echo "How to use: ./install.sh [vim | nvim]"
    exit 1
fi

# require the user to specify which version they are using
if [ $1 != "vim" ] && [ $1 != "nvim" ]; then
    echo "Please specify whether you are using \"vim\" or \"nvim\""
    exit 1
fi

# link everything
ln -sf `pwd` ~/.${1}
ln -sf `pwd`/core/vimrc ~/.${1}rc

# install all our plugins
$1 +PlugInstall +qall &> /dev/null

