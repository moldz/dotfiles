#!/bin/bash
DOTFILES_DIR=$(dirname $(readlink -f $0))

# setup the vimrc file
if [[ -f ~/.vimrc ]]; then mv -f ~/.vimrc ~/.vimrc.old; fi
echo "so $DOTFILES_DIR/vimrc" > ~/.vimrc

# setup the tmux file
if [[ -f ~/.tmux.conf ]]; then mv -f ~/.tmux.conf ~/.tmux.conf.old; fi
echo "source-file $DOTFILES_DIR/tmux.conf" > ~/.tmux.conf

# setup git
$DOTFILES_DIR/git.sh
