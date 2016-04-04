let s:zen_active = 0
let g:limelight_conceal_ctermfg = g:neapolitan.bkg + 4

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

func! s:toggle_zen()
  if (s:zen_active)
    call s:deactivate_zen()
  else
    call s:activate_zen()
  endif
endfunc

func! s:activate_zen()
  execute 'Goyo'
  echo 'activating zen mode'
  let s:zen_active = 1
endfunc

func! s:deactivate_zen()
  execute 'Goyo'
  echo 'deactivating zen mode'
  let s:zen_active = 0
endfunc

nmap <Leader>zm :ZenModeToggle<cr>
xmap <Leader>zm :ZenModeToggle<cr>

command! ZenModeToggle call s:toggle_zen()
