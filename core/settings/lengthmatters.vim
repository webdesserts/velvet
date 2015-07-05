set textwidth=80
let s:color = g:neapolitan.bkg+1
let s:hi = 'ctermbg=' . (s:color) . ' guibg='. (g:neapolitan.rgb_map[s:color])
call lengthmatters#highlight(s:hi)
