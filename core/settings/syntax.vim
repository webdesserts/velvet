"TODO: move out the stuff that most people probably don't need
au BufRead,BufNewFile *.md,*.markdown set filetype=markdown
au BufRead,BufNewFile Gulpfile,Gruntfile set filetype=js
au BufRead,BufNewFile *.json,.jscsrc,.jshintrc,.eslintrc set filetype=json
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.hjs,*.handlebars,*hbs,*.mustache set filetype=mustache

let g:html_indent_inctags = "head,body,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
