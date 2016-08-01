set nocompatible
set shell=/bin/sh

let g:velvet = {'core':{}, 'user':{}}

" Find shit
let g:velvet.rc = fnamemodify(resolve(expand('<sfile>:p')), ':p:~')
let g:velvet.root = simplify(g:velvet.rc .'/../')

" Local Settings
let g:velvet.core.path = g:velvet.root .'core/'
let g:velvet.core.settings = g:velvet.core.path .'settings/'
let g:velvet.core.plugins_file = g:velvet.core.path ."plugins.vim"

" User Settings
let g:velvet.user.path = g:velvet.root .'user/'
let g:velvet.user.settings = g:velvet.user.path .'settings/'
let g:velvet.user.plugins_file = g:velvet.user.path ."plugins.vim"

" Plugin locations
let g:velvet.plugins = g:velvet.root .'plugins/'
let g:velvet.config = g:velvet.core.path ."config.vim"
let g:velvet.plug = g:velvet.plugins .'vim-plug/plug.vim'

" Source that shit
exe 'source' g:velvet.config
exe 'source' g:velvet.plug

call plug#begin(g:velvet.plugins)
  exe 'source' g:velvet.core.plugins_file
  exe 'source' g:velvet.user.plugins_file
call plug#end()

let settings_files = split(globpath(g:velvet.core.settings, '*.vim'), '\n')
let settings_files += split(globpath(g:velvet.user.settings, '*.vim'), '\n')

for file in settings_files
  exe 'source' file
endfor

cd %:p:h
