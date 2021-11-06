#!/bin/sh
echo "The installation of minecraft server 1.16.5 is running !"
apt upgrade
apt update
sudo apt-get auto-remove default-jdk default-jre openjdk-11-jdk openjre-11-jre
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt-get update
sudo apt-get install adoptopenjdk-8-hotspot
mkdir MinecraftServer1.16.5
cd MinecraftServer1.16.5
wget https://api.pl3x.net/v2/purpur/1.16.5/1171/server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui
echo "Your minecraft server on 1.16.5 is now running !"
