# Install Nodejs
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install yo
sudo npm install -g yo

# Install iotedge module
sudo npm i -g yo generator-azure-iot-edge-module

# Install git
sudo apt-get install git

# Install vs code
sudo apt-get install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get install code -y

# Install .Net Core SDK
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.2 -y

# Install jdk
sudo apt-get install default-jdk -y

# Install maven
sudo apt-get install maven -y

# Install cookiecutter
sudo apt-get install cookiecutter -y

# Install iotedgehubdev
pip install iotedgehubdev

# Install docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y

# config to run as non root
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

# Restart computer
sudo shutdown -r 1