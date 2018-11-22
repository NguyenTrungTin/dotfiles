#!/usr/bin/env bash

# Cd Home Directory
cd ~

# Dotfiles
 DOTFILES='.aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc'

# Uninstall dotfiles
echo 'Uninstalling dotfiles...'
rm -f $DOTFILES

# Revert old dotfiles
echo 'Reverting old dotfiles...'
mv ~/.dotfiles-backup/.* ~/

# Done!
echo 'Done!'

