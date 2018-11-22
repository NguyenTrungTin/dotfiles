#!/usr/bin/env bash

# Cd Home Directory
cd ~

# Dotfiles
 DOTFILES='.aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc'
DOTDIR='.vim/ .tmux/ .hyper_plugins/ .oh-my-zsh/'

# Uninstall dotfiles
echo 'Uninstalling dotfiles...'
rm -rf $DOTFILES $DOTDIR 2>/dev/null

# Revert old dotfiles
echo 'Reverting old dotfiles...'
cd ~/.dotfiles-backup
mv $DOTFILES $DOTDIR ~/ 2>/dev/null
cd ~

# Done!
echo 'Done!'

