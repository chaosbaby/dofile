git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm /root/.vimrc -f
cp ${dofilesPath}/vim/vim8.vimrc /root/.vimrc -f
vim "+PluginInstall" "+x" "+x"
cd ~/.vim/bundle/youcompleteme
./install.py
