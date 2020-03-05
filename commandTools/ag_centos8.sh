# ag default build is for all users make sure your are root
# make sure github speed fast
sudo yum -y install gcc automake autoconf libtool make
sudo yum install gcc gcc-c++
cd ~/tool
git clone https://github.com/ggreer/the_silver_searcher.git
cd the_silver_searcher
git checkout 2.0.0
./build.sh
make
sudo make install
