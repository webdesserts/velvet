" TODO figure out how to get this working inside of "gui_running"
if has('win32') || has('win64')
  set guifont=Source_Code_Pro_Light:h12:cANSI
else
  set guifont=Source\ Code\ Pro\ Light\ 12
end

"turn on syntax highlighting
syntax on

colorscheme desert

" Make it beautiful - colors and fonts
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  autocmd VimEnter * colorscheme solarized

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=60
  set columns=190
else
  "dont load csapprox if we have no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

