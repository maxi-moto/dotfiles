###############################################################################
#
# Necessary tasks to get everything running smoothly
#
###############################################################################

#!/bin/bash

# Install NeoBundle
curl \
https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh \
  | sh
#sh ./install.sh
#rm install.sh

# update plugins
vim +NeoBundleInstall +qall

# configure plugins
cd $HOME/.vim/bundle/YouCompleteMe && ./install.py --all
