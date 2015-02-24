let plug_path = '~/'. g:velvet.vimfiles .'/local/packages/vim-plug/'
let packages_path = '$HOME/'. g:velvet.vimfiles .'/local/packages/'

let &rtp.=','.plug_path
call plug#begin(packages_path)


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
