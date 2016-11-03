#!/bin/bash
###############################################################################
#
# Dotfile install script
# Creates sym links from my home directory to my .dotfile directory
#
###############################################################################

# dotfiles=$HOME/.dotfiles/*
dotfiles=$PWD/*

create_sym_link () {
  local source_file
  source_file=$1
  local destination_file
  destination_file=$2

  printf "Creating symbolic link ${source_file} -> ${destination_file} ...\n"
  ln -sfn ${source_file} ${destination_file}
}

printf "\n\nCreating symlinks for dot files ... \n\n"

for file in $dotfiles
do
  file_name=$(basename "$file")
  destination_file=$HOME/.$file_name

  if [ "${file_name}" != "dotfiles.sh" ] && [ "${file_name}" != "bootstrap.sh" ] &&
      [ "${file_name}" != "README.md" ]; then
    create_sym_link $file $destination_file
  fi
done

printf "\nDone\n\n"
