cd ~/tool
wget https://files.pythonhosted.org/packages/0b/95/5fff90cd4093c79759d736e5f7c921c8eb7e5057a70d753cdb4e8e5895d7/Twisted-19.10.0.tar.bz2
yum -y install bzip2
tar -jxvf Twisted-19.10.0.tar.bz2
cd Twisted-19.10.0
python3 setup.py install
pip3 install scrapy
