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
vim +dein#isntall +qall

# configure plugins
cd $HOME/.vim/bundle/repos/github.com/Valloric/YouCompleteMe \
  && ./install.py --clang-completer \
                  # requires npm to be installed
                  # --tern-completer \
                  # requires go to be installed
                  # --gocode-completer \
                  # requires cargo to be installed
                  # --racer-completer

