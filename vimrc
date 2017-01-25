"vim configs
source ~/.vim/basic.vim
source ~/.vim/keymap.vim

"plugin configs
source ~/.vim/airline.vim

"=========== Package Manager ============
"
" install dein
"
"========================================
source ~/.vim/dein.packages.vim

" if &compatible
"   set nocompatible
" endif

" set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

" if dein#load_state('~/.vim/bundle')
"   call dein#begin('~/.vim/bundle')

"   call dein#add('~/.vim/bundle/repos/github.com/Shougo/dein.vim')
"   call dein#add('Shougo/neocomplete.vim')

"   call dein#end()
"   call dein#save_state()
" endif

" filetype plugin indent on
" syntax enable

" if dein#check_install()
"   call dein#install()
" endif
