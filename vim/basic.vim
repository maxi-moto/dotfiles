" appearance: theme
set background=dark
set nu
syntax on
set cursorline
highlight ColorColumn ctermbg=gray
set colorcolumn=81
set nowrap

" appearance: whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/

" appearance: tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" appearance: file exlpoerer
let g:netrw_liststyle=3

" settings: backspace (mainly for mac)
set backspace=indent,eol,start

" settings: update time for plugins (shorter for GitGutter)
set updatetime=750
