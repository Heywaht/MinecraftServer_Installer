#!/bin/sh
echo "The installation of minecraft server 1.16.5 is running !"
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt-get update
mkdir MinecraftServer1.16.5
cd MinecraftServer1.16.5
wget https://raw.githubusercontent.com/Heywaht/mc-rlsrv-1.16.5/main/eula.txt
wget https://api.pl3x.net/v2/purpur/1.16.5/1171/server.jar
java -Xmx2000M -Xms2000M -jar server.jar nogui
echo "Your minecraft server on 1.16.5 is now running !"
