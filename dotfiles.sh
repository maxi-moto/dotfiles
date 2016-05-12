###############################################################################
#
# Dotfile install script
# Creates sym links from my home directory to my .dotfile directory
#
###############################################################################

#!/bin/bash

DOTFILES=$HOME/.dotfiles/*

create_sym_link () {
  local source=$1
  local destination=$2

  printf "Creating symbolic link %s -> %s ...\n" $source $destination 
  ln -sf $source $destination
}

printf "\n\nCreating symlinks for dot files ... \n\n"

shopt -s dotglob
for file in $DOTFILES
do
  file_name=$(basename "$file")
  destination=$HOME/$file_name

  if [ $file_name != "dotfiles.sh" ] && [ $file_name != ".git" ]; then
    create_sym_link $file $destination
  fi
done

printf "\nDone\n\n"
