#! /bin/bash

os=$OSTYPE
pwd=`pwd`

#TODO: Don't expect people to have GOW installed on Windows

echo $os
if [[ "$os" = msys ]]; then
  echo "windows system detected"
  vimfiles=$HOME/vimfiles
  vimrc=$HOME/_vimrc
else
  echo "assuming linux"
  vimfiles=$HOME/.vim
  vimrc=$HOME/.vimrc
fi

  # move ~/.vim directory
  if [[ -d $vimfiles ]]; then
    echo "vim folder found. cleaning."
    cp $vimfiles $vimfiles.backup
    rm -rf $vimfiles
  fi
  echo "creating vim link"
  ln -s $pwd $vimfiles

  # move .vimrc
  if [[ -f $vimrc ]]; then
    echo "removing current vimrc"
    cp $vimrc $vimrc.backup
    rm $vimrc
  fi
  echo "creating vimrc ln"
  ln local/vimrc $vimrc

echo "Installing Packages"
vim +BundleInstall +qall
