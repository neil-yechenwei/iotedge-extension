sudo npm install -g yo
sudo npm i -g yo generator-azure-iot-edge-module
sudo apt install git
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt install apt-transport-https
sudo apt update
sudo apt install dotnet-sdk-2.2
sudo apt install default-jdk
sudo apt install maven
sudo apt-get install cookiecutter
pip install iotedgehubdev
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo shutdown -r 1
