mkdir ~/tool
cd ~/tool
wget https://github.com/github/hub/releases/download/v2.11.1/hub-linux-amd64-2.11.1.tgz
tar zxvf hub-linux-amd64-2.11.1.tgz

ln -s ~/tool/hub-linux-amd64-2.11.1/bin/hub /usr/bin/hub
