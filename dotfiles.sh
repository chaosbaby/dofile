if [ -d "$HOME/.cfg" ];then
    echo "文件夹存在"
else
	cd ~
	git clone --bare https://github.com/chaosbaby/dotfiles.git $HOME/.cfg
	function config {
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
	}
	mkdir -p .config-backup
	config checkout
	if [ $? = 0 ]; then
		echo "Checked out config.";
	else
		echo "Backing up pre-existing dot files.";
		config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
	fi;
	config config --local status.showUntrackedFiles no
	config checkout
	config config status.showUntrackedFiles no
fi

