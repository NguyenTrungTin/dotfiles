#!/usr/bin/env bash

# Cd on Home directory
cd ~

# Dotfiles
DOTFILES='.aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc'
DOTDIR='.vim/ .tmux/ .hyper_plugins/ .oh-my-zsh/'

# Create backup directory
echo 'Starting backup dotfiles process...'
mkdir -p ~/.dotfiles-backup

# Backup current dotfiles
echo 'Moving current dotfiles into ~/.dotfiles-backup directory...'
mv $DOTFILES $DOTDIR ~/.dotfiles-backup/ 2>/dev/null

# Backup done!
echo 'Backup done!'

# Start installing new dotfiles
echo 'Starting install new dotfiles'

# Clone source code from GitHub
git clone https://github.com/NguyenTrungTin/dotfiles ~/.dotfiles

# Let's install new dotfiles
cd ~/.dotfiles
cp -r $DOTFILES $DOTDIR ~/ 2>/dev/null
source $DOTFILES
cd ~

# Setup for VIM
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undos
mkdir -p ~/.vim/snippets
cp -r ~/.dotfiles/.vim/snippets/* ~/.vim/snippets/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# Setup for Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

# Done!
echo 'Install dotfiles successfully. Done!'

