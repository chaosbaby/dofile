yum install unzip wget -y
yum install ctags cmake gcc-c++ python-devel -y
sudo yum install -y ruby ruby-devel lua lua-devel luajit luajit-devel ctags git tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed

sudo ln -s /usr/bin/xsubpp /usr/share/perl5/ExtUtils/xsubpp

sudo yum install ncurses ncurses-devel -y
#sudo yum install ncurses-devel.x86_64  -y
mkdir ~/tool
cd ~/tool
if [ -d "/root/tool/vim-master" ];then
echo "文件存在"
else
wget https://github.com/vim/vim/archive/master.zip
unzip master.zip
echo "文件不存在"
fi
cd vim-master
cd src/
# ./configure --with-features=huge -enable-pythoninterp --with-python-config-dir=/usr/lib64/python2.7/config

./configure --with-features=huge \ --enable-multibyte \
--enable-rubyinterp=yes \
--enable-python3interp=yes \
--with-python-config-dir=/usr/lib/python3.7/config-3.7m-x86_64-linux-gnu \
--enable-perlinterp=yes \
--enable-luainterp=yes \
--enable-cscope \
--prefix=/usr/local

sudo make
sudo make install
export PATH=/usr/local/bin:$PATH
