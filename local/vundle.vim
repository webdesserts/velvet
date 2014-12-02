if has('win32') || has('win64')
  set rtp+=~/vimfiles/local/packages/vundle/
  call vundle#begin('$HOME/vimfiles/local/packages/')
else
  " Usual quickstart instructions
  set rtp+=~/.vim/local/packages/vundle/
  call vundle#begin('$HOME/.vim/local/packages/')
endif


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim Repositories
Plugin 'matchit.zip'
Plugin 'css3'

" Github Repositories
Plugin 'file:///Users/webdesserts/code/neapolitan'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'wavded/vim-stylus'
Plugin 'juvenn/mustache.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-repeat'
Plugin 'juleswang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'marijnh/tern_for_vim'

call vundle#end()
