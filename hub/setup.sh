mkdir ~/tool
cd ~/tool
yum -y install wget unzip
wget https://github.com/github/hub/releases/download/v2.11.1/hub-linux-amd64-2.11.1.tgz
tar zxvf hub-linux-amd64-2.11.1.tgz

sudo ln -s ~/tool/hub-linux-amd64-2.11.1/bin/hub /usr/bin/hub
