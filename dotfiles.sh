#!/bin/bash
###############################################################################
#
# Dotfile install script
# Creates sym links from my home directory to my .dotfile directory
#
###############################################################################

dotfiles=$PWD/*

IGNORE_ARRAY=(
  'dotfiles.sh'
  'bootstrap.sh'
  'README.md'
)

ignored_file() {
  local target
  target=$1

  local current_file
  for current_file in ${IGNORE_ARRAY[@]}; do
    if [[ ${current_file} == ${target} ]]; then
      return 1
    fi
  done

  return 0
}

create_sym_link () {
  local source_file
  source_file=$1
  local destination_file
  destination_file=$2

  printf "Creating symbolic link ${source_file} -> ${destination_file} ...\n"
  ln -sfn ${source_file} ${destination_file}
}

printf "\n\nCreating symlinks for dot files ... \n\n"

for file in $dotfiles; do
  file_name=$(basename "${file}")
  destination_file=$HOME/.${file_name}

  if ignored_file ${file_name}; then
    create_sym_link ${file} ${destination_file}
  fi
done

printf "\nDone\n\n"
