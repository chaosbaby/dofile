yum install zlib zlib-devel -y
yum install libffi-devel -y
yum install unzip wget -y
yum install ctags cmake gcc-c++ python-devel -y
yum install openssl-devel -y
yum install sqlite-devel -y
yum install ntpdate -y
ntpdate -u cn.pool.ntp.org
if [ -d "~/tool/Python-3.8.1/" ];then
    echo "文件夹存在"
else
    cd ~/tool
    echo "文件夹不存在"
    wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tar.xz
    tar -xvJf  Python-3.8.1.tar.xz
    mkdir /usr/local/python3 #创建编译安装目录
    cd Python-3.8.1
    ./configure --prefix=/usr/local/python3 --with-ssl
    #./configure --prefix=/usr/local/python3 --enable-optimizations
    make
    make install
    rm -f /usr/local/bin/python3
    rm -f /usr/local/bin/pip3
    rm -f /usr/bin/python3.8m-config
    ln -s /usr/local/python3/bin/python3 /usr/local/bin/python3
    ln -s /usr/local/python3/bin/pip3 /usr/local/bin/pip3
    ln -s /usr/local/python3/bin/python3.8m-config /usr/bin/python3.8m-config
    python3 -m pip install --user --upgrade pynvim
    python3 -m pip install --user --upgrade tldr
    python3 -m pip install --user --upgrade thefuck
    python3 -m pip install --user --upgrade pygments
    python3 -m pip install --user --upgrade jedi
fi
