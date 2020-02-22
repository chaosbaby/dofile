sudo cp /ect/apt/sources.list /ect/apt/sources.list.baks
sudo chmod 777 sources.list
dofilesPath=`pwd`
sudo cp sources.list /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get upgrade -y
