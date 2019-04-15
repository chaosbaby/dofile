# for some more recent plugin
sudo yum upgrade -y
sudo yum update -y

yum install net-tool -y #for wget

#git setting
yum install git -y
git config --global user.email "50092526@qq.com"
git config --global user.name "chaos"
git config --global credential.helper store

# hub install
cd ~/tool/dofiles/hub
sh ~/tool/dofiles/hub/setup.sh

# python3
cd ~/tool/dofiles/python3
sh ~/tool/dofiles/python3/setup_3.7.3.sh

# vim8
cd ~/tool/dofiles/vim
sh ~/tool/dofiles/vim/setup_vim8.sh

#vim8 plugins
cd ~/tool/dofiles/vim
sh ~/tool/dofiles/vim/setupVim8Plugins.sh

## dofiles: tmux
cd ~/tool/dofiles/tmux
sh ~/tool/dofiles/tmux/setup.sh

## dofiles: zsh
cd ~/tool/dofiles/zsh
sh ~/tool/dofiles/zsh/setup.sh
