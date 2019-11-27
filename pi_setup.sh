#/bin/bash

#installing code
wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
curl -L https://code.headmelted.com/installers/apt.sh | sudo bash
sudo apt remove code-oss
sudo apt-get install code-oss=1.29.0-1539702286
sudo apt-mark hold code-oss
# sudo apt-mark unhold code-oss

#installing jank...
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python #
sudo apt-get -y install python3 #
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y install docker.io
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install fish
sudo apt-get -y install redshift
#sudo apt-get -y install cinnamon
sudo apt-get -y install firefox-esr
sudo apt-get -y install curl
sudo apt-get -y install curl
sudo apt-get -y install curl

#python installs
/usr/bin/python3 -m pip install -U pylint --user


#### config stuff..
#printf "usbhid.mousepoll=2" >> /boot/cmdline.txt #untested...run twice and see what happens..maybe add a check to see if it's already there.
sudo systemctl enable ssh
sudo systemctl start ssh

### git config stuff...
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global user.name "desync-o-tron"
git config --global user.email "deltav@vt.edu"

#docker config
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
#sudo systemctl restart snap.docker.dockerd

###confguring & srtting up vscode with extensions
code-oss --install-extension ms-python.python
code-oss --install-extension ms-vscode.cpptools
code-oss --install-extension max-ss.cyberpunk
code-oss --install-extension ms-vscode.go


