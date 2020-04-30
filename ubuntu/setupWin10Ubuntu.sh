# change apt source to aliyum
sudo cp /ect/apt/sources.list /ect/apt/sources.list.baks
sudo chmod 777 sources.list
dofilesPath=`pwd`
sudo cp sources.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get upgrade -y

# install ag
sudo apt-get install silversearcher-ag

#install bat
version="v0.15.0"
mkdir ~/tool
cd ~/tool
wget https://github.com/sharkdp/bat/releases/download/$version/bat-$version-x86_64-unknown-linux-musl.tar.gz -O - |tar -xvzf - -C /usr/local/bin && mv /usr/local/bin/bat-$version-x86_64-unknown-linux-musl/bat /usr/local/bin/bat
# install ripgrep for fast code search

mkdir ~/tool
cd ~/tool
sudo yum-config-manager --add-repo=https://copr.fedorainfracloud.org/coprs/carlwgeorge/ripgrep/repo/epel-7/carlwgeorge-ripgrep-epel-7.repo
sudo yum install ripgrep

# install hub from source code
mkdir ~/tool
cd ~/tool
wget https://github.com/github/hub/releases/download/v2.11.1/hub-linux-amd64-2.11.1.tgz
tar zxvf hub-linux-amd64-2.11.1.tgz
sudo ln -s ~/tool/hub-linux-amd64-2.11.1/bin/hub /usr/bin/hub


# add new global for gtags for nv
mkdir ~/tool
cd ~/tool
sudo apt-get install libncurses5-dev
wget http://tamacom.com/global/global-6.6.4.tar.gz
tar -xzf global-6.6.4.tar.gz
cd global-6.6.4
./configure
sudo make
sudo make install
python3 -m pip install --user --upgrade pygments
# for leaderF to work correctly need set pygments_parser run with python3

# intall openssh for secureCRT link
sudo apt-get install openssh-server
sudo apt-get install openssh-client
service ssh start

#install for neovim py3 surport
python3 -m pip install --user --upgrade pynvim

#command helper
python3 -m pip install --user --upgrade tldr
python3 -m pip install --user --upgrade thefuck
