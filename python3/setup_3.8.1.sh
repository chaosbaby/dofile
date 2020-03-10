yum install zlib zlib-devel -y
yum install libffi-devel -y
yum install unzip wget -y
yum install ctags cmake gcc-c++ python-devel -y
yum install openssl-devel -y
yum install sqlite-devel -y
yum install ntpdate -y
ntpdate -u cn.pool.ntp.org
cd ~/tool
if [ -d "/root/tool/Python-3.8.1/" ];then
echo "文件夹存在"
else
echo "文件夹不存在"
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tar.xz
tar -xvJf  Python-3.8.1.tar.xz
fi
mkdir /usr/local/python3 #创建编译安装目录
cd Python-3.8.1
./configure --prefix=/usr/local/python3 --with-ssl
#./configure --prefix=/usr/local/python3 --enable-optimizations
# make && make install
make
make install
rm -f /usr/local/bin/python3
rm -f /usr/local/bin/pip3
rm -f /usr/bin/python3.8m-config
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3
ln -s /usr/local/python3/bin/python3.8m-config /usr/bin/python3.8m-config
