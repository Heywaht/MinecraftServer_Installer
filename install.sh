#!/bin/sh
sudo su
apt-get update
apt-get install git -y
git clone https://github.com/Heywaht/mc-rlsrv-1.16.5 
cd /home/admin/mc-rlsrv-1.16.5
bash ./srv.sh
