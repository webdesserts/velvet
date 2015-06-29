
set background=dark
"if version > 580
"    " no guarantees for version 5.8 and below, but this makes it stop
"    " complaining
"    hi clear
"    if exists("syntax_on")
"  syntax reset
"    endif
"endif
let g:colors_name="desert"

" color terminal definitions
hi Normal ctermfg=7
hi SpecialKey ctermfg=2
hi NonText cterm=bold ctermfg=darkblue
hi Directory ctermfg=6
hi ErrorMsg cterm=bold ctermfg=7 ctermbg=1
hi IncSearch  cterm=NONE ctermfg=11 ctermbg=3
hi Search cterm=NONE ctermfg=11 ctermbg=8
hi MoreMsg  ctermfg=darkgreen
hi ModeMsg  cterm=NONE ctermfg=brown
hi LineNr ctermfg=8
hi Question ctermfg=green
hi StatusLine cterm=bold ctermfg=8 ctermbg=0
hi StatusLineNC  ctermfg=8 ctermbg=0
hi Title  ctermfg=5
hi Visual ctermbg=8 ctermfg=7
hi VisualNOS  cterm=bold,underline
hi WarningMsg ctermfg=1
hi WildMenu ctermfg=0 ctermbg=3
hi Folded ctermfg=8 ctermbg=NONE
hi FoldColumn ctermfg=darkgrey ctermbg=NONE

" Diff
hi DiffAdd  ctermbg=2
hi DiffChange ctermbg=3
hi DiffDelete cterm=bold ctermfg=4 ctermbg=1
hi DiffText cterm=bold ctermbg=7

" Errors and things
hi Ignore cterm=bold ctermfg=7
hi Ignore ctermfg=darkgrey
hi Error  cterm=bold ctermfg=7 ctermbg=1

" code structure
hi Comment ctermfg=8
hi Constant ctermfg=5
hi String ctermfg=2
hi Number ctermfg=1
" A special symbol, usually used for special characters like "\n" in strings
hi Special ctermfg=5
hi Identifier cterm=none ctermfg=6
hi Statement ctermfg=3 
hi PreProc ctermfg=5
hi Todo ctermfg=5 ctermbg=NONE
hi Type ctermfg=2

" weird things
hi Underlined cterm=underline

" Structure
hi VertSplit ctermfg=0 ctermbg=8
hi CursorLine cterm=none ctermbg=0
hi ColorColumn ctermbg=8

" cursor stuff that doesn't work
hi Cursor ctermfg=1 ctermbg=0
hi iCursor ctermfg=1 ctermbg=0

"vim: sw=4
