##########################
#Docker Installation
#Tested on Ubuntu 18.04 VM
##########################

#!/bin/sh
sudo apt-get update
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Installing utilities!"
echo "+++++++++++++++++++++++++++++++++++++++++"
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Adding GPG Key!"
echo "+++++++++++++++++++++++++++++++++++++++++"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Update Docker Debian repository!"
echo "+++++++++++++++++++++++++++++++++++++++++"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
echo "+++++++++++++++++++++++++++++++++++++++++++++"
echo "Docker & Docker-Compose installation begins!"
echo "+++++++++++++++++++++++++++++++++++++++++++++"
sudo apt install -y docker-ce
sudo apt install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker container run hello-world
echo "+++++++++++++++++++++++++++++++++++++++++"
echo "Docker Installation complete!"
docker --version
docker-compose --version
echo "+++++++++++++++++++++++++++++++++++++++++"

## Run Docker command without Sudo
sudo usermod -aG docker $(whoami)
