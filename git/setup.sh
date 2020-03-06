curPath=$(dirname $(readlink -f "$0"))
sudo yum install git -y

git config --global user.email "50092526@qq.com"
git config --global user.name "chaos"
git config --global credential.helper store

ln $curPath/.gitignore_global $HOME/.gitignore_global
ln $curPath/.gitaliases $HOME/.gitaliases

git config --global core.excludesfile $HOME/.gitignore_global
git config --global include.path $HOME/.gitaliases

