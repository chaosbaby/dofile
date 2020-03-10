# base pre install tool {{{ #
sudo yum upgrade -y
sudo yum update -y
yum install net-tool -y #for wget
yum -y install wget unzip
# }}} base pre install tool #

# git install and setting {{{ #
sudo yum install git -y
git config --global user.email "50092526@qq.com"
git config --global user.name "chaos"
git config --global credential.helper store
git config --global core.excludesfile $HOME/.gitignore_global
git config --global include.path $HOME/.gitaliases
# }}} git install and setting #

# hub install and setting {{{ #
mkdir ~/tool
cd ~/tool
if [ -d ~/tool/hub-linux-amd64-2.11.1 ]; then
    echo "hub file already here , pass installation"
else
    echo "start install hub"
    wget https://github.com/github/hub/releases/download/v2.11.1/hub-linux-amd64-2.11.1.tgz
    tar zxvf hub-linux-amd64-2.11.1.tgz
    sudo ln -s ~/tool/hub-linux-amd64-2.11.1/bin/hub /usr/bin/hub
fi
# }}} hub install and setting #

sudo yum -y install tmux

# zsh and zplug install and setting it should install the last {{{ #
if [[ -d ~/.oh-my-zsh ]]; then
    echo ".oh-my-zsh file already here , pass installation"
else
    echo "Install oh-my-zsh ..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    source ~/.zshrc
fi
# }}} zsh and zplug install and setting  #
