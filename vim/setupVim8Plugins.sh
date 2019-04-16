git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm /root/.vimrc
ln ${dofilesPath}/vim/vim8.vimrc /root/.vimrc -s
vim "+PluginInstall" "+x" "+x"
cd ~/.vim/bundle/youcompleteme
./install.py
