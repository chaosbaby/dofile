yum install zlib zlib-devel -y
yum install libffi-devel -y
yum install unzip wget -y
yum install ctags cmake gcc-c++ python-devel -y
cd ~/tool
if [ -d "/root/tool/python-3.7.3/" ];then
echo "文件夹存在"
else
echo "文件夹不存在"
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz                                                                                
tar -xvJf  Python-3.7.3.tar.xz
fi
mkdir /usr/local/python3 #创建编译安装目录
cd Python-3.7.3
./configure --prefix=/usr/local/python3
# make && make install
make
make install
 
ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3
