let s:colors_name="neapolitan"

set background=dark

if !exists('s:rgb_map')
  let s:rgb_map = {
    \ 0:   '#000000', 1:   '#800000', 2:   '#008000', 3:   '#808000', 4:   '#000080',
    \ 5:   '#800080', 6:   '#008080', 7:   '#c0c0c0', 8:   '#808080', 9:   '#ff0000',
    \ 10:  '#00ff00', 11:  '#ffff00', 12:  '#0000ff', 13:  '#ff00ff', 14:  '#00ffff',
    \ 15:  '#ffffff', 16:  '#000000', 17:  '#00005f', 18:  '#000087', 19:  '#0000af',
    \ 20:  '#0000df', 21:  '#0000ff', 22:  '#005f00', 23:  '#005f5f', 24:  '#005f87',
    \ 25:  '#005faf', 26:  '#005fdf', 27:  '#005fff', 28:  '#008700', 29:  '#00875f',
    \ 30:  '#008787', 31:  '#0087af', 32:  '#0087df', 33:  '#0087ff', 34:  '#00af00',
    \ 35:  '#00af5f', 36:  '#00af87', 37:  '#00afaf', 38:  '#00afdf', 39:  '#00afff',
    \ 40:  '#00df00', 41:  '#00df5f', 42:  '#00df87', 43:  '#00dfaf', 44:  '#00dfdf',
    \ 45:  '#00dfff', 46:  '#00ff00', 47:  '#00ff5f', 48:  '#00ff87', 49:  '#00ffaf',
    \ 50:  '#00ffdf', 51:  '#00ffff', 52:  '#5f0000', 53:  '#5f005f', 54:  '#5f0087',
    \ 55:  '#5f00af', 56:  '#5f00df', 57:  '#5f00ff', 58:  '#5f5f00', 59:  '#5f5f5f',
    \ 60:  '#5f5f87', 61:  '#5f5faf', 62:  '#5f5fdf', 63:  '#5f5fff', 64:  '#5f8700',
    \ 65:  '#5f875f', 66:  '#5f8787', 67:  '#5f87af', 68:  '#5f87df', 69:  '#5f87ff',
    \ 70:  '#5faf00', 71:  '#5faf5f', 72:  '#5faf87', 73:  '#5fafaf', 74:  '#5fafdf',
    \ 75:  '#5fafff', 76:  '#5fdf00', 77:  '#5fdf5f', 78:  '#5fdf87', 79:  '#5fdfaf',
    \ 80:  '#5fdfdf', 81:  '#5fdfff', 82:  '#5fff00', 83:  '#5fff5f', 84:  '#5fff87',
    \ 85:  '#5fffaf', 86:  '#5fffdf', 87:  '#5fffff', 88:  '#870000', 89:  '#87005f',
    \ 90:  '#870087', 91:  '#8700af', 92:  '#8700df', 93:  '#8700ff', 94:  '#875f00',
    \ 95:  '#875f5f', 96:  '#875f87', 97:  '#875faf', 98:  '#875fdf', 99:  '#875fff',
    \ 100: '#878700', 101: '#87875f', 102: '#878787', 103: '#8787af', 104: '#8787df',
    \ 105: '#8787ff', 106: '#87af00', 107: '#87af5f', 108: '#87af87', 109: '#87afaf',
    \ 110: '#87afdf', 111: '#87afff', 112: '#87df00', 113: '#87df5f', 114: '#87df87',
    \ 115: '#87dfaf', 116: '#87dfdf', 117: '#87dfff', 118: '#87ff00', 119: '#87ff5f',
    \ 120: '#87ff87', 121: '#87ffaf', 122: '#87ffdf', 123: '#87ffff', 124: '#af0000',
    \ 125: '#af005f', 126: '#af0087', 127: '#af00af', 128: '#af00df', 129: '#af00ff',
    \ 130: '#af5f00', 131: '#af5f5f', 132: '#af5f87', 133: '#af5faf', 134: '#af5fdf',
    \ 135: '#af5fff', 136: '#af8700', 137: '#af875f', 138: '#af8787', 139: '#af87af',
    \ 140: '#af87df', 141: '#af87ff', 142: '#afaf00', 143: '#afaf5f', 144: '#afaf87',
    \ 145: '#afafaf', 146: '#afafdf', 147: '#afafff', 148: '#afdf00', 149: '#afdf5f',
    \ 150: '#afdf87', 151: '#afdfaf', 152: '#afdfdf', 153: '#afdfff', 154: '#afff00',
    \ 155: '#afff5f', 156: '#afff87', 157: '#afffaf', 158: '#afffdf', 159: '#afffff',
    \ 160: '#df0000', 161: '#df005f', 162: '#df0087', 163: '#df00af', 164: '#df00df',
    \ 165: '#df00ff', 166: '#df5f00', 167: '#df5f5f', 168: '#df5f87', 169: '#df5faf',
    \ 170: '#df5fdf', 171: '#df5fff', 172: '#df8700', 173: '#df875f', 174: '#df8787',
    \ 175: '#df87af', 176: '#df87df', 177: '#df87ff', 178: '#dfaf00', 179: '#dfaf5f',
    \ 180: '#dfaf87', 181: '#dfafaf', 182: '#dfafdf', 183: '#dfafff', 184: '#dfdf00',
    \ 185: '#dfdf5f', 186: '#dfdf87', 187: '#dfdfaf', 188: '#dfdfdf', 189: '#dfdfff',
    \ 190: '#dfff00', 191: '#dfff5f', 192: '#dfff87', 193: '#dfffaf', 194: '#dfffdf',
    \ 195: '#dfffff', 196: '#ff0000', 197: '#ff005f', 198: '#ff0087', 199: '#ff00af',
    \ 200: '#ff00df', 201: '#ff00ff', 202: '#ff5f00', 203: '#ff5f5f', 204: '#ff5f87',
    \ 205: '#ff5faf', 206: '#ff5fdf', 207: '#ff5fff', 208: '#ff8700', 209: '#ff875f',
    \ 210: '#ff8787', 211: '#ff87af', 212: '#ff87df', 213: '#ff87ff', 214: '#ffaf00',
    \ 215: '#ffaf5f', 216: '#ffaf87', 217: '#ffafaf', 218: '#ffafdf', 219: '#ffafff',
    \ 220: '#ffdf00', 221: '#ffdf5f', 222: '#ffdf87', 223: '#ffdfaf', 224: '#ffdfdf',
    \ 225: '#ffdfff', 226: '#ffff00', 227: '#ffff5f', 228: '#ffff87', 229: '#ffffaf',
    \ 230: '#ffffdf', 231: '#ffffff', 232: '#080808', 233: '#121212', 234: '#1c1c1c',
    \ 235: '#262626', 236: '#303030', 237: '#3a3a3a', 238: '#444444', 239: '#4e4e4e',
    \ 240: '#585858', 241: '#606060', 242: '#666666', 243: '#767676', 244: '#808080',
    \ 245: '#8a8a8a', 246: '#949494', 247: '#9e9e9e', 248: '#a8a8a8', 249: '#b2b2b2',
    \ 250: '#bcbcbc', 251: '#c6c6c6', 252: '#d0d0d0', 253: '#dadada', 254: '#e4e4e4',
    \ 255: '#eeeeee' }
endif

let s:c = { 'light': {} }
let s:c.red = 167
let s:c.green = 36
let s:c.yellow = 179
let s:c.blue = 68
let s:c.magenta = 168
let s:c.cyan = 31

let s:c.black = 235
let s:c.bronze = 101
let s:c.pearl = 230
let s:c.white = 231

let s:c.light.red = 210
let s:c.light.green = 79
let s:c.light.yellow = 221
let s:c.light.blue = 81
let s:c.light.magenta = 211
let s:c.light.cyan = 45

let s:c.bkg = s:c.black
let s:c.txt = s:c.pearl
let s:c.light.txt = s:c.bronze

if !exists('g:neapolitan')
  let g:neapolitan = s:c
  let g:neapolitan.rgb_map = s:rgb_map
endif

function! s:hi(item, ...)
  if exists('a:1') && !empty(a:1)
    let fg = a:1
    execute printf("highlight %s ctermfg=%s guifg=%s", a:item, fg, get(s:rgb_map, fg, 'NONE'))
  endif
  if exists('a:2') && !empty(a:2)
    let bg = a:2
    execute printf("highlight %s ctermbg=%s guibg=%s", a:item, bg, get(s:rgb_map, bg, 'NONE'))
  endif
  if exists('a:3') && !empty(a:3)
    let style = a:3
    execute printf("highlight %s cterm=%s gui=%s", a:item, style, style)
  endif
endfunction

" color terminal definitions
call s:hi('Normal', s:c.txt, s:c.bkg)
call s:hi('SpecialKey', s:c.txt)
call s:hi('NonText', s:c.blue)
call s:hi('Directory', s:c.cyan)
call s:hi('ModeMsg', s:c.green)
call s:hi('ModeMsg', s:c.bronze, '')
call s:hi('WarningMsg', s:c.red)
call s:hi('ErrorMsg', s:c.pearl, s:c.red)
call s:hi('IncSearch', s:c.bkg, s:c.yellow, 'none')
call s:hi('Search', s:c.light.yellow, s:c.bkg + 3)
call s:hi('LineNr', s:c.bkg+2)
call s:hi('Question', s:c.green)
call s:hi('StatusLine', s:c.bronze, s:c.bkg + 2, 'none')
call s:hi('StatusLineNC', s:c.bkg+2, s:c.bkg + 2, 'none')
call s:hi('Title', s:c.magenta)
call s:hi('Visual', s:c.light.magenta, s:c.bkg+2)
call s:hi('VisualNOS', '', '', 'bold,underline')
call s:hi('WildMenu', s:c.black, s:c.yellow)
call s:hi('Folded', s:c.bronze, '')
call s:hi('FoldColumn', s:c.bronze, '')

" code structure
call s:hi('Comment', s:c.bronze)
call s:hi('Constant', s:c.magenta)
call s:hi('String', s:c.green)
call s:hi('Number', s:c.red)

" A special symbol, usually used for special characters like "\n" in strings
call s:hi('Special', s:c.magenta)
call s:hi('Identifier', s:c.cyan, '', 'none')
call s:hi('Statement', s:c.yellow)
call s:hi('PreProc', s:c.magenta)
call s:hi('Todo', s:c.light.magenta, 'none', 'bold')
call s:hi('Type', s:c.green)

" weird things
hi Underlined cterm=underline

" Structure
call s:hi('VertSplit', s:c.bkg+2, s:c.bkg+1, 'none')
call s:hi('ColorColumn', '', s:c.bkg+1, 'none')
call s:hi('CursorLine', '', s:c.bkg+1, 'none')
call s:hi('CursorLineNR', s:c.yellow, s:c.bkg+1, 'none')
autocmd InsertEnter * call s:hi('CursorLineNR',  s:c.green, '', 'none')
autocmd InsertLeave * call s:hi('CursorLineNR',  s:c.yellow, '', 'none')


" cursor stuff that doesn't work
call s:hi('Cursor', s:c.red, 'none')
call s:hi('iCursor', s:c.red, 'none')

" Diff
call s:hi('DiffAdd', s:c.green)
call s:hi('DiffChange', s:c.yellow)
call s:hi('DiffDelete', s:c.red)
call s:hi('DiffText', s:c.pearl)

" GitGutter
call s:hi('GitGutterAdd', s:c.green)
call s:hi('GitGutterChange', s:c.yellow)
call s:hi('GitGutterDelete', s:c.red)
call s:hi('GitGutterChangeDelete', s:c.magenta)

" Indent Guides
call s:hi('IndentGuidesOdd', '', s:c.bkg+1)
call s:hi('IndentGuidesEven', '', s:c.bkg+2)

" Errors and things
call s:hi('Ignore', s:c.pearl,'', 'bold')
call s:hi('Ignore', s:c.pearl, s:c.red, 'bold')

"vim: sw=4
