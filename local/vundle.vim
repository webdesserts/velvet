
set nocompatible " be iMproved
filetype off     " required!

if has('win32') || has('win64')
  set rtp+=~/vimfiles/local/packages/vundle/
  call vundle#rc('$HOME/vimfiles/local/packages/')
else
  " Usual quickstart instructions
  set rtp+=~/.vim/local/packages/vundle/
  call vundle#rc('$HOME/.vim/local/packages/')
endif


" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" Github Repositories
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'skwp/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-surround'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'wavded/vim-stylus'
Bundle 'juvenn/mustache.vim'
Bundle 'groenewege/vim-less'
Bundle 'elzr/vim-json'
Bundle 'marijnh/tern', {'rtp': 'vim/'}

" Vim Repositories
Bundle 'matchit.zip'

filetype plugin indent on     " required!
