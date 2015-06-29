colorscheme neapolitan

if (&t_Co >= 88 || &t_Co == '')
  "colorscheme default
else
  "colorscheme default
end

" Make it beautiful - colors and fonts
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256
  "colorscheme default

  set lines=60
  set columns=190

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set guifont=Source\ Code\ Pro\ Light\ 10,
             \Source_Code_Pro_Light:h12:cANSI,
             \Deja_Vu_Sans_Mono:h12:cANSI,
             \Deja\ Vu\ Sans\ Mono\ 12,
             \Consolas:h12:cANSI,
             \Ubuntu\ Mono\ 14
else
  "dont load csapprox if we have no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

