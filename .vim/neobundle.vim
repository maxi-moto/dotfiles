"Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

    if has('vim_starting')
        if &compatible
            set nocompatible               " Be iMproved
    endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

"Let NeoBundle manage NeoBundle
"Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"My Bundles here:
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'rust-lang/rust.vim'
NeoBundle 'Valloric/YouCompleteMe'

call neobundle#end()

"Required:
filetype plugin indent on

"If there are uninstalled bundles found on startup,
"this will conveniently prompt you to install them.
NeoBundleCheck
