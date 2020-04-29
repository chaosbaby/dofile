version="v0.15.0"
cd ~/tool
wget https://github.com/sharkdp/bat/releases/download/$version/bat-$version-x86_64-unknown-linux-musl.tar.gz -O - |tar -xvzf - -C /usr/local/bin && mv /usr/local/bin/bat-$version-x86_64-unknown-linux-musl/bat /usr/local/bin/bat
