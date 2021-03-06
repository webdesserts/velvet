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
nnoremap <silent> <C-h> <C-w><C-h>
nnoremap <silent> <C-j> <C-w><C-j>
nnoremap <silent> <C-k> <C-w><C-k>
nnoremap <silent> <C-l> <C-w><C-l>

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

" Alt + {=}
" equalize all windows heights/widths
nnoremap <silent> <A-=> <C-w>=

" If you visually select something and hit paste
" that thing gets yanked into your buffer. This
" changes the paste command in visual mode so that
" it doesn't overwrite whatever is in your paste buffer.

vnoremap p "_dP

" Vim Development

" {leader}vr
" reload the .nvimrc
nmap <leader>vr :source ~/.nvimrc<cr>

" {leader}vs
" source the current file
nmap <leader>vs :source %<cr>

" ===== SplitJoin plugin ====================================================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" ===== Nerd Tree ===========================================================
" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <C-\> :NERDTreeFind<CR>:vertical res 30<CR>

" ===== Unite ===============================================================
" I don't know what all this does yet
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>

" ===== AutoComplete =========================================================
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

