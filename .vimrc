execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable
colorscheme zazen

" indents
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" backspace
set backspace=indent,eol,start

" go stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" parenthesese stuff
let g:rbpt_colorpairs = [
    \ ['blue',        'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" jsbeautify
autocmd BufWritePre *.js call JsBeautify()
autocmd BufWritePre *.html call HtmlBeautify()
autocmd BufWritePre *.css call CSSBeautify()

" markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" python
let python_highlight_all = 1
let python_highlight_space_errors = 0
