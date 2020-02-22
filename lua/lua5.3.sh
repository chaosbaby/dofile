whereis lua|xargs rm -rf
cd ~/tool
wget -c http://www.lua.org/ftp/lua-5.3.3.tar.gz
tar zxvf lua-5.3.3.tar.gz
cd lua-5.3.3
yum install readline-devel
yum install -y ncurses-devel
make linux test && sudo make install
ln -s /usr/local/bin/lua /usr/bin/lua
rm /usr/bin/luac -y
ln -s /usr/local/bin/luac /usr/bin/luac
