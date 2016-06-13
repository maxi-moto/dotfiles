#!/bin/bash
###############################################################################
#
# Necessary tasks to get everything running smoothly
#
###############################################################################

# Install NeoBundle
curl \
https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh 
  | sh

# update plugins
vim +NeoBundleInstall +qall

# configure plugins
cd $HOME/.vim/bundle/YouCompleteMe && ./install.py --all
