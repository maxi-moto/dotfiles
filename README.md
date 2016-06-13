# Dotfiles

These are my dotfiles.

There's only Tmux and Vim, because that's all I really need to keep my set up
the same across all my machines. I might add some zsh stuff, or bash specific,
but I don't really care as long as Vim and Tmux get going.

There's not much in the way of customization, but I expect the files to grow a
lot over time.

# dotfiles.sh

dotfiles.sh is a simple script to set up the dotfiles for use easily. It works
well on my Debian 8 system, and my Mac at work.

It uses shopt, which is bash specific, so you will most likely have to run it
through bash.

#### What is does

dotfiles.sh loops through the .dotfiles directory, which it expects to be apart
of $HOME. It ignores itself and the .git folder and pulls out what is relevant,
both hidden and not. Then it creates a symbolic link from .dofiles directory to
the home directory for all the files.

Right now, it ignores files I explicitly tell it to. There's probably a better
way to structure it so I don't have to type out whole names and put it in an if
condition.

#### Why Symbolic Links

I don't have a good answer for you, it just made sense. I didn't want to have
to copy over the files (then I'd have duplicates and it'd be really easy to add
something to one and not the other), and a symb link was a quick way to do get
my files in the home directory.
