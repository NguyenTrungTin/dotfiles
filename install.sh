#!/usr/bin/env bash

# Cd on Home directory
cd ~

# Create backup directory
echo 'Starting backup dotfiles process...'
echo 'Moving current dotfiles into ~/.dotfiles-backup directory...'
mkdir -p ~/.dotfiles-bakup

# Backup current dotfiles
mv -t ~/.dotfiles-backup/ .aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc

# Backup done!
echo 'Backup done!'

# Start installing new dotfiles
echo 'Starting install new dotfiles'

# Clone source code from GitHub
git clone https://github.com/NguyenTrungTin/dotfiles ~/.dotfiles

# Let's install new dotfiles
cd ~/.dotfiles
cp -t ~/ .aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc
cd ~

# Done!
echo 'Install dotfiles successfully. Done!'

