###############################################################################
#
# Dotfile install script
# Creates sym links from my home directory to my .dotfile directory
#
###############################################################################

#!/bin/bash

dotfiles=$HOME/.dotfiles/*

create_sym_link () {
  local source=$1
  local destination=$2

  printf "Creating symbolic link %s -> %s ...\n" $source $destination
  ln -sfn $source $destination
}

printf "\n\nCreating symlinks for dot files ... \n\n"

shopt -s dotglob
for file in $dotfiles
do
  file_name=$(basename "$file")
  destination=$HOME/$file_name

  if [ $file_name != "dotfiles.sh" ] && [ $file_name != "bootstrap.sh" ] &&
      [ $file_name != ".git" ] && [ $file_name != ".gitignore" ] &&
      [ $file_name != "README.md" ]; then
    create_sym_link $file $destination
  fi
done

printf "\nDone\n\n"
