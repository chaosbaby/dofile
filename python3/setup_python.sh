sudo apt-get install libffi-dev -y
pythonVer=$1

url="https://www.python.org/ftp/python/$pythonVer/Python-$pythonVer.tar.xz"
echo $url


cd ~/tool
if [ -d "$HOME/tool/Python-$pythonVer/" ];then
echo "文件夹存在"
else
echo "文件夹不存在"
wget $url
tar -xvJf  Python-$pythonVer.tar.xz
fi
mkdir /usr/local/python-$pythonVer #创建编译安装目录
cd Python-$pythonVer
# ./configure --prefix=/usr/local/python3 --with-ssl
# ./configure --prefix=/usr/local/python-$pythonVer --with-ssl
./configure --prefix=/usr/local/python3 --enable-optimizations
sudo make && make install
