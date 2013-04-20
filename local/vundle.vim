
set nocompatible " be iMproved
filetype off     " required!

if has('win32') || has('win64')
  set rtp+=~/vimfiles/bundle/vundle/
  call vundle#rc('$HOME/vimfiles/local/packages/')
else
  " Usual quickstart instructions
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc('$HOME/.vim/local/packages/')
endif


" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle '/scrooloose/nerdtree'
Bundle '/jistr/vim-nerdtree-tabs'
Bundle '/nathanaelkane/vim-indent-guides'
Bundle '/vim-scripts/matchit.zip'
Bundle '/rstacruz/sparkup'
Bundle '/skwp/vim-colors-solarized'
Bundle '/pangloss/vim-javascript'
Bundle '/tpope/vim-surround'
Bundle '/AndrewRadev/splitjoin.vim'
Bundle '/wavded/vim-stylus'
Bundle '/juvenn/mustache.vim'
Bundle '/groenewege/vim-less'
Bundle '/elzr/vim-json'

filetype plugin indent on     " required!