yum install unzip wget -y
yum install ctags cmake gcc-c++ python-devel -y
sudo yum install -y ruby ruby-devel lua lua-devel luajit luajit-devel ctags git tcl-devel perl perl-devel perl-ExtUtils-ParseXS perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed

sudo ln -s /usr/bin/xsubpp /usr/share/perl5/ExtUtils/xsubpp

sudo yum install ncurses ncurses-devel -y
sudo yum install ncurses-devel.x86_64  -y
mkdir ~/tool
cd ~/tool
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/local/python3/lib/python3.7/config-3.7m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/share/vim/vim8

sudo make
sudo make install
export PATH=/usr/local/bin:$PATH
