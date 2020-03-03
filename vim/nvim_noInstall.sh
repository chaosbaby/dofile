cd ~/tool
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo chmod u+x nvim.appimage
sudo rm /usr/bin/nvim -f
sudo ln -s ~/tool/nvim.appimage /usr/bin/nvim
sudo mkdir -p ~/.config/nvim/
sudo rm -f ~/.vimrc

echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
sudo ln -s ~/tool/dofile/vim/init.vimrc ~/.vimrc
source ~/.vimrc' >> ~/.config/nvim/init.vim

curFilePath=$(dirname $(readlink -f "$0"))
echo $curFilePath
ln -s $curFilePath/setting/plug $HOME/.config
