
# yum -y install global
yum install ncurses-devel
cd ~/tool
wget http://tamacom.com/global/global-6.6.4.tar.gz
tar -xzf global-6.6.4.tar.gz
cd global-6.6.4
./configure
make
sudo make install
