yum -y install pcre-devel xz-devel
mkdir ~/tool
cd ~/tool
wget https://github.com/ggreer/the_silver_searcher/archive/master.zip
mv master.zip ag.zip
unzip ag.zip
cd the_silver_searcher-master/
yum -y install automake
./build.sh
make install
rm -f ag.zip
