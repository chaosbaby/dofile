# base setting

dofilesPath=`pwd`
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
cd ${doflesPath}/hub
sh ${doflesPath}/hub/setup.sh

# python3
cd ${doflesPath}/python3
sh ${doflesPath}/python3/setup_3.7.3.sh

# vim8
cd ${doflesPath}/vim
sh ${doflesPath}/vim/setup_vim8.sh

#vim8 plugins
cd ${doflesPath}/vim
sh ${doflesPath}/vim/setupVim8Plugins.sh

## dofiles: tmux
cd ${doflesPath}/tmux
sh ${doflesPath}/tmux/setup.sh

## dofiles: zsh
cd ${doflesPath}/zsh
sh ${doflesPath}/zsh/setup.sh
