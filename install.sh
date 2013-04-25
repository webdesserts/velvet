#! /bin/bash

function link {
  echo "linking $1"
  ln -s $2 $1
}


function backup {
  echo "backing up $1"
  if [[ ! -L $1 ]]; then 
    [[ -e $1.backup ]] && rm -rf $1.backup
    cp -r $1 $1.backup
  fi
}

function clean {
  echo "cleaning $1"

  if [[ -e $1 && ! -L $1 ]]; then
    rm -rf $1
  fi
}


vim=.vim
vimrc=.vimrc

backup $HOME/$vim
backup $HOME/$vimrc

clean $HOME/$vim
clean $HOME/$vimrc

link $HOME/$vim ./
link $HOME/$vimrc local/vimrc

echo "Installing Packages"
vim +BundleInstall +qall

