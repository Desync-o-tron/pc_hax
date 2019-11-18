#/bin/bash

#installing jank...
snap install code
apt-get -y update
apt-get -y upgrade
apt-get -y install docker.io
apt-get -y install vim
apt-get -y install git
apt-get -y install fish
apt-get -y install redshift
apt-get -y install cinnamon


#### config stuff..
timedatectl set-local-rtc 1 --adjust-system-clock

### git config stuff...
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
