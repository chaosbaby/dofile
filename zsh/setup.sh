#!/bin/zsh
# yum install zsh -y
if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Install oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
source ~/.zshrc
