" call arpeggio#load()

" ===== Sanity Improvements =========

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
let mapleader=","

" alias yw to yank the entire word 'yank inner word'
" even if the cursor is halfway inside the word
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,yw yiww

" ,ow = 'overwrite word', replace a word with what's in the yank buffer
" FIXME: will not properly repeat when you use a dot (tie into repeat.vim)
nnoremap ,ow "_diwhp

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" Ctrl + {h,j,k,l}
" Move between split windows by using the four directions
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Ctrl + {←,↓,↑,→}
" Resize windows with arrow keys
nnoremap <silent> <C-Left>  <C-w><
nnoremap <silent> <C-Down>  <C-w>-
nnoremap <silent> <C-Up>    <C-w>+
nnoremap <silent> <C-Right> <C-w>>

" Alt + {h,j,k,l}
" Move window to far {top, bottom, left, right}
nnoremap <silent> <M-h> <C-w><S-h>
nnoremap <silent> <M-j> <C-w><S-j>
nnoremap <silent> <M-k> <C-w><S-k>
nnoremap <silent> <M-l> <C-w><S-l>

" Alt + (=)
" equalize all windows heights/widths
nnoremap <silent> <A-=> <C-w>=

" ===== SplitJoin plugin ====================================================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" ===== Nerd Tree ===========================================================
" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 30<CR>

