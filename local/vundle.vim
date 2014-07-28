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
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'elzr/vim-json'
"Plugin 'marijnh/tern_for_vim'
Plugin 'vim-perl/vim-perl'

call vundle#end()
