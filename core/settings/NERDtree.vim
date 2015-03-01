" Make nerdtree look nice
let NERDTreeMinimalUI = 1

if has("win32") || has("win16")
  let NERDTreeDirArrows = 0
  " Adds the missing copy option to NERDTree
  " requires GOW or something similar to be installed
  let g:NERDTreeCopyCmd= 'cp -r'
else
  let NERDTreeDirArrows = 1
endif

" cds every time you change NERDTree's root
let g:NERDTreeChDirMode=2

let g:NERDTreeWinSize = 30

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
