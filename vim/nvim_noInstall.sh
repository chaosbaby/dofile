cd ~/tool
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
rm /usr/bin/nvim -f
ln -s ~/tool/nvim.appimage /usr/bin/nvim
mkdir -p ~/.comfig/nvim/
rm -f ~/.vimrc

echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
ln -s ~/tool/dofile/vim/init.vimrc ~/.vimrc
source ~/.vimrc' >> ~/.comfig/nvim/init.vim

curFilePath=$(dirname $(readlink -f "$0"))
echo $curFilePath
ln $curFilePath/settings/plug $HOME/.config
