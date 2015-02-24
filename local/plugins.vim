
let &rtp.=','.g:velvet.plug
call plug#begin(g:velvet.packages)


" Plug '~/neapolitan'
Plug 'matchit.zip'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeFocus' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'wavded/vim-stylus'
Plug 'juvenn/mustache.vim'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-repeat'
Plug 'hail2u/vim-css3-syntax'
Plug 'elzr/vim-json'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
