#! /bin/bash

os=$OSTYPE

echo $os
if [[ "$os" = linux* ]]; then
  echo "linux system detected"

  # move ~/.vim directory
  if [[ -d $HOME/.vim ]]; then
    echo "~/.vim folder found. cleaning."
    rm -rf $HOME/.vim
  fi
  echo "creating ~/.vim folder"
  cp -r ./ $HOME/.vim

  # move .vimrc
  if [[ -e $HOME/.vimrc ]]; then
    echo "removing current ~/.vimrc"
    rm $HOME/.vimrc
  fi
  echo "creating new ~/.vimrc"
  cp local/vimrc $HOME/.vimrc
else
  echo "assuming windows"
fi

echo "Installing Packages"
vim +BundleInstall +qall
