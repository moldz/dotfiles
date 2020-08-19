#!/bin/bash
DOTFILES_DIR=$(dirname $(readlink -f $0))

# setup the bashrc file
if [[ -f ~/.bashrc ]]; then mv -f ~/.bashrc ~/.bashrc.old; fi
echo "source $DOTFILES_DIR/bashrc" > ~/.bashrc

# setup the vimrc file
if [[ -f ~/.vimrc ]]; then mv -f ~/.vimrc ~/.vimrc.old; fi
echo "so $DOTFILES_DIR/vimrc" > ~/.vimrc

# setup the tmux file
if [[ -f ~/.tmux.conf ]]; then mv -f ~/.tmux.conf ~/.tmux.conf.old; fi
echo "source-file $DOTFILES_DIR/tmux.conf" > ~/.tmux.conf

# setup git
read -p "Run the git setup script (type 'y'): " promptgit
if [[ "$promptgit" == "y" ]]; then
    $DOTFILES_DIR/git.sh
fi
