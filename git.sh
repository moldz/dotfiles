#!/bin/bash
read -p 'Name for git: ' NAME
read -p 'Email for git: ' EMAIL
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

git config --global core.editor vim

git config --global alias.hist 'log --oneline --all --graph --decorate'
git config --global alias.ci commit
git config --global alias.st status
