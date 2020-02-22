cd ~/tool
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
rm /usr/bin/nvim -f
ln -s ~/tool/nvim.appimage /usr/bin/nvim
mkdir -p ~/.comfig/nvim/
rm -f ~/.vimrc
ln -s ~/tool/dofile/vim/init.vimrc ~/.vimrc
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc' >> ~/.comfig/nvim/init.vim
