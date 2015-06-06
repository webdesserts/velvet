" Debugging
set verbose=0

" ================ Menus =============================

" M flag must be set before `syntax` and `filetype` are turned on
set guioptions+=M  " remove menu bar (from source)
set guioptions-=m  " this is only here to prevent bundles from adding extra menuitems
set guioptions-=L  " remove left-hand scroll bar during vertical split (e.g. NERDTree)
set guioptions-=T  " remove toolbar
set guioptions-=r  " remove right-hand scroll bar

" ================ General Config ====================

set number                      " Line numbers are good
set colorcolumn=80              " 80 line warning column
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store lots of :cmdline history
set noshowcmd                   " don't incomplete cmds down the bottom
set noshowmode                  " Hide current mode down the bottosm since we have lightline
set gcr=a:blinkon0              " Disable cursor blink
set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
set encoding=utf-8
set fileencoding=utf-8
set laststatus=2                " force the status line to always appear

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" this must come before syntax and colorscheme bundles!
" turn on syntax highlighting
syntax on


" ================ Single CursorLine  =================
" cursor line add the bar at your cursor so that it's a bit more visible.
" normal when you leave a window the cursorline stays visible. The following
" ensures that only the window that has focus will display a cursorline
set nocursorline

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au BufWinLeave,BufLeave,WinLeave * setlocal nocursorline
augroup END

" ================ Search Settings  =================

set incsearch        " Find the next match as we type the search
set hlsearch         " Hilight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display tabs and trailing spaces visually (with dots)
set list listchars=tab:\ \ ,trail:·

set nowrap       " Don't wrap lines
set linebreak    " Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set omnifunc=syntaxcomplete#Complete
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=12        "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Neovim ============================

" set cursor to swap to line on insert
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
