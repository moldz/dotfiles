#!/bin/bash
DOTFILES_DIR=$(dirname $(readlink -f $0))

# setup the vimrc file
if [[ -f ~/.vimrc ]]; then mv -f ~/.vimrc ~/.vimrc.old; fi
echo "so $DOTFILES_DIR/vimrc" > ~/.vimrc

# setup the vim scripts file
mkdir -p ~/.vim/plugin
echo "so $DOTFILES_DIR/moldz.vim" > ~/.vim/plugin/moldz.vim

# setup the tmux file
if [[ -f ~/.tmux.conf ]]; then mv -f ~/.tmux.conf ~/.tmux.conf.old; fi
echo "source-file $DOTFILES_DIR/tmux.conf" > ~/.tmux.conf

# setup zsh
if [[ -f ~/.zshenv ]]; then mv -f ~/.zshenv ~/.zshenv.old; fi
echo "source $DOTFILES_DIR/zshenv" > ~/.zshenv

# setup git
read -p "Run the git setup script (type 'y'): " promptgit
if [[ "$promptgit" == "y" ]]; then
    $DOTFILES_DIR/git.sh
fi
