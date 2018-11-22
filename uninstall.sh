#!/usr/bin/env bash

# Cd Home Directory
cd ~

# Uninstall dotfiles
echo 'Starting uninstall dotfiles...'
rm -f .aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc

rm -rf /.dotfiles

# Revert old dotfiles
echo 'Reverting old dotfiles...'
mv ~/.dotfiles-backup/.* ~/

# Done!
echo 'Done!'

