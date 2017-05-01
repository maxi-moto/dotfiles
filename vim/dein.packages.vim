if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundle')
  call dein#begin('~/.vim/bundle')

  call dein#add('Shougo/dein.vim')
  call dein#add('bling/vim-airline')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
