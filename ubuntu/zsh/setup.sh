#!/bin/zsh
sudo apt install zsh
if [[ ! -d ~/.oh-my-zsh ]]; then
    echo "Install oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

cp -v alias.zsh ~/.alias
cp -v zshrc ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
echo "plugins=(z git zsh-syntax-highlighting extract zsh-autosuggestions safe-paste zsh-completions kubectl)
source $ZSH/oh-my-zsh.sh
case $(uname -a) in
   *Microsoft*) unsetopt BG_NICE ;;
esc
" >> ~/.zshrc
source ~/.zshrc

