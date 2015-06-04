
let s:base0 = [ '#0000ff', 0 ]
let s:base1 = [ '#00ffff', 8 ]
let s:base2 = [ '#c0c0c0', 7 ]
let s:base3 = [ '#ffffff', 15 ]

let s:red = [ '#800000', 1 ]
let s:green = [ '#008000', 2 ]
let s:yellow = [ '#808000', 3 ]
let s:blue = [ '#000080', 4 ]
let s:magenta = [ '#800080', 5 ]
let s:cyan = [ '#008080', 6 ]

let s:bright_red = [ '#800000', 9 ]
let s:bright_green = [ '#008000', 10 ]
let s:bright_yellow = [ '#808000', 11 ]
let s:bright_blue = [ '#000080', 12 ]
let s:bright_magenta = [ '#800080', 13 ]
let s:bright_cyan = [ '#008080', 14 ]

" save for later
if &background ==# 'light'
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base2, s:cyan ], [ s:bright_cyan, s:base1 ] ]
let s:p.inactive.left =  [ [ s:cyan, s:base0 ], [ s:base1, s:base0 ] ]
let s:p.visual.left = [ [ s:base2, s:magenta ], [ s:bright_magenta, s:base1 ] ]
let s:p.insert.left = [ [ s:base2, s:green ], [ s:bright_green, s:base1 ] ]
let s:p.replace.left = [ [ s:base2, s:red ], [ s:bright_red, s:base1 ] ]
let s:p.tabline.left = [ [ s:base2, s:base1 ] ]

let s:p.normal.right = [ [ s:cyan, s:base0 ], [ s:cyan, s:base0 ] ]
let s:p.inactive.right = [ [ s:base0, s:base0 ], [ s:base0, s:base0 ] ]
let s:p.tabline.right = copy(s:p.normal.right)

let s:p.normal.middle = [ [ s:base1, s:base0 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base0 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base1 ] ]

let s:p.tabline.tabsel = [ [ s:base2, s:base3 ] ]

let s:p.normal.error = [ [ s:base2, s:red ] ]
let s:p.normal.warning = [ [ s:base2, s:yellow ] ]

let g:lightline#colorscheme#neapolitan#palette = lightline#colorscheme#flatten(s:p)
