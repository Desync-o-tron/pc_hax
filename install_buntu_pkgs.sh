#/bin/bash

#adding repos...
sudo apt-add-repository ppa:agornostal/ulauncher 

#installing jank...
sudo apt-get -y update
sudo apt-get -y upgrade
snap install code
sudo apt-get -y install python #
sudo apt-get -y install python3 #
sudo apt-get -y install python-pip
sudo apt-get -y install python3-pip
sudo apt-get -y install docker.io
sudo apt-get -y install vim
sudo apt-get -y install git
sudo apt-get -y install fish
sudo apt-get -y install redshift
sudo apt-get -y install cinnamon
sudo apt-get -y install ulauncher #TODO figure out how to autolaunch this beeetch
sudo apt-get -y install curl
sudo apt-get -y install curl
sudo apt-get -y install curl

#python installs
/usr/bin/python3 -m pip install -U pylint --user


#### config stuff..
sudo timedatectl set-local-rtc 1 --adjust-system-clock

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

##for adding snap packages to path
##TODO ex
DIR="/snap/bin/"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  export PATH="/snap/bin:$PATH"
  source ~/.bashrc
fi

###confguring & srtting up vscode with extensions
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension max-ss.cyberpunk
code --install-extension ms-vscode.go


