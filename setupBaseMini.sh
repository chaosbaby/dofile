# base setting

dofilesPath=`pwd`
# for some more recent plugin
sudo yum upgrade -y
sudo yum update -y

yum install net-tool -y #for wget

#git setting
cd ${dofilesPath}/git
sh ${dofilesPath}/git/setup.sh

# hub install
cd ${dofilesPath}/hub
sh ${dofilesPath}/hub/setup.sh

# python3
cd ${dofilesPath}/python3
sh ${dofilesPath}/python3/setup_3.7.3.sh

## dofiles: tmux
cd ${dofilesPath}/tmux
sh ${dofilesPath}/tmux/setup.sh

## dofiles: zsh
cd ${dofilesPath}/zsh
sh ${dofilesPath}/zsh/setup.sh
