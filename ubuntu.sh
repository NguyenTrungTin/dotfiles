#!/usr/bin/env bash

sudo apt-get update

# Install common dependencies
sudo apt -y install software-properties-common build-essential checkinstall wget curl git libssl-dev apt-transport-https ca-certificates gnupg-agent

# Install Docker and docker-compose
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install git-extras
sudo apt-get install git-extras

# Install net-tools, includes aditional utilisties such as arp, ifconfig, netstat, rarp, nameif and route
sudo apt install net-tools

# Install EditorConfig
sudo apt-get install editorconfig

# Install Nodejs via nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install --lts

# Install Yarn
sudo apt-get install --no-install-recommends yarn

# Install eslint
sudo npm install -g eslint

# Install Instant Markdown
sudo npm -g install instant-markdown-d

# Install vim
sudo apt-get install vim-gtk

# Install Tmux
sudo apt-get install tmux

# Install Python3
sudo apt install build-essential cmake python3-dev

# Install Ruby
# Install rbenv
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

# Run rbenv-doctor
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# Install ag
sudo apt-get install silversearcher-ag

# Install ack
sudo apt-get install ack-grep
sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep

# Install rg
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep_0.10.0_amd64.deb
sudo dpkg -i ripgrep_0.10.0_amd64.deb

# Vim will fzf automatically

# Install ctags
sudo apt-get install exuberant-ctags

# Install Tmuxinator
gem install tmuxinator

# Done!
echo 'Done!'

