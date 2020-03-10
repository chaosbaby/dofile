cd ~/tool
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo chmod 777 nvim.appimage
sudo rm /usr/bin/nvim -f
sudo ln -s ~/tool/nvim.appimage /usr/bin/nvim
sudo ln -s ~/tool/nvim.appimage /usr/bin/nv
