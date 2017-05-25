# Dotfiles

These are my dotfiles.

Definately a work in progess.

# Install

To install, just run bash boostrap.sh

# dotfiles.sh
dofiles.sh creates symlinks from the files to the home directory. It should be
able to be ran at any point (as a way of updating).

# bootstrap.sh

boostrap.sh calls dotfiles.sh which sets up symlinks in the home directory. Then
it runs through the set up of dein, the package manager I'm using for vim.
Finally, it installs all the plugins and configures them.

You should only run boostrap.sh once or remove everything and run it again.
