#!/bin/sh
sudo yum -y install tmux
cp -v tmux.conf ~/.tmux.conf
echo "alias tmux='tmux -2'" >> ~/.bashrc
source ~/.bashrc
