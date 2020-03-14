yum remove zsh -y
wget https://sourceforge.net/projects/zsh/files/zsh/5.7.1/zsh-5.7.1.tar.xz/download
mv download zsh-5.7.1.tar.xz
tar xvJf zsh-5.7.1.tar.xz
cd zsh-5.7.1
./configure
make && make install
