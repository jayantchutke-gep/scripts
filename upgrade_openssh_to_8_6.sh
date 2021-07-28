#!/bin/bash
sudo apt update
sudo apt -y install build-essential zlib1g-dev libssl-dev
sudo mkdir /var/lib/sshd
sudo chmod -R 700 /var/lib/sshd/
sudo chown -R root:sys /var/lib/sshd/
wget -c https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-8.6p1.tar.gz
tar -xzf openssh-8.6p1.tar.gz
cd openssh-8.6p1/
sudo apt -y install libpam0g-dev libselinux1-dev
./configure
make
sudo make install
