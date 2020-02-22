cd ~/tool
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
ln -s nvim.appimage /usr/bin/nvim
rm /usr/bin/nvim -f
ln -s ~/tool/nvim.appimage /usr/bin/nvim
nvim
