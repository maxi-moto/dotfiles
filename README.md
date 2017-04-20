# Dotfiles

These are my dotfiles.

Definately a work in progess.

# Install

To install, just run bash boostrap.sh

# bootstrap.sh

boostrap.sh calls dotfiles.sh which sets up symlinks in the home directory. Then
it runs through the set up of dein, the package manager I'm using for vim.
Finally, it installs all the plugins and configures them.

There may be additional set up (depends on system) to get YouCompleteMe running.
Read the docs for what exactly is needed
