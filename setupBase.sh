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
cd ${dofilesPath}/hub
sh ${dofilesPath}/hub/setup.sh

# python3
cd ${dofilesPath}/python3
sh ${dofilesPath}/python3/setup_3.7.3.sh

# vim8
cd ${dofilesPath}/vim
sh ${dofilesPath}/vim/setup_vim8.sh

#vim8 plugins
cd ${dofilesPath}/vim
sh ${dofilesPath}/vim/setupVim8Plugins.sh

## dofiles: tmux
cd ${dofilesPath}/tmux
sh ${dofilesPath}/tmux/setup.sh

## dofiles: zsh
cd ${dofilesPath}/zsh
sh ${dofilesPath}/zsh/setup.sh
