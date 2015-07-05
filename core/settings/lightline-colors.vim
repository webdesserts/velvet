function! s:pair(...)
  let list = a:000
  "echo a:000
  for item in list
    call map(item, '[g:neapolitan.rgb_map[v:val], v:val]')
  endfor
  "echo list
  return list
endfunction

let s:c = g:neapolitan

" save for later
" if &background ==# 'light'
" endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = s:pair([ s:c.txt, s:c.cyan ], [ s:c.light.cyan, s:c.bkg+2 ])
let s:p.inactive.left =  s:pair([ s:c.cyan, s:c.bkg+1 ], [ s:c.bkg+2, s:c.bkg ])
let s:p.visual.left = s:pair([ s:c.txt, s:c.magenta ], [ s:c.light.magenta, s:c.bkg+2 ])
let s:p.insert.left = s:pair([ s:c.txt, s:c.green ], [ s:c.light.green, s:c.bkg+2 ])
let s:p.replace.left = s:pair([ s:c.txt, s:c.red ], [ s:c.light.red, s:c.bkg+2 ])
let s:p.tabline.left = s:pair([ s:c.txt, s:c.bkg+2 ])

let s:p.normal.right = s:pair([ s:c.cyan, s:c.bkg+2 ], [ s:c.cyan, s:c.bkg+2 ])
let s:p.inactive.right = s:pair([ s:c.bkg+1, s:c.bkg+1 ], [ s:c.bkg+1, s:c.bkg+1 ])
let s:p.tabline.right = copy(s:p.normal.right)

let s:p.normal.middle = s:pair([ s:c.bkg+3, s:c.bkg+1 ])
let s:p.inactive.middle = s:pair([ s:c.bkg+3, s:c.bkg+1 ])
let s:p.tabline.middle = s:pair([ s:c.bkg+3, s:c.bkg+2 ])

let s:p.tabline.tabsel = s:pair([ s:c.txt, s:c.white ])

let s:p.normal.error = s:pair([ s:c.txt, s:c.red ])
let s:p.normal.warning = s:pair([ s:c.txt, s:c.yellow ])

let g:lightline#colorscheme#neapolitan#palette = lightline#colorscheme#flatten(s:p)
