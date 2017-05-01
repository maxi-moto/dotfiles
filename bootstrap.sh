#!/bin/bash
###############################################################################
#
# Necessary tasks to get everything running smoothly
#
###############################################################################

# set up dotfiles
bash dotfiles.sh

# install dein
curl \
  https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh \
  | sh -s $HOME/.vim/bundle

# update packages
vim +dein#install +qall

