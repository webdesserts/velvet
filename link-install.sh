#!/bin/bash

if [ $# -lt 1 ] || [ $1 == "-h" ]; then
    echo "How to use: ./link-install.sh [vim | nvim]"
    exit 1
fi

if [ $1 != "vim" ] && [ $1 != "nvim" ]; then
    echo "Please specifie whether you are using \"vim\" or \"nvim\""
    exit 1
fi

ln -s `pwd` ~/.${1}
ln -s `pwd`/core/vimrc ~/.${1}rc
$1 +PlugInstall +qall

