#############################
## Jenkins installation
## tested on Ubnutu 18.04 VM
#############################
#!/bin/sh
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo "deb https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
apt-get update
apt install -y openjdk-8-jdk
java -version
echo "##################"
echo " Jenkins install "
echo "##################"
apt-get install -y jenkins
apt-get update
systemctl status jenkins
echo "#################################################"
echo "Check the initial password to login into Jenkins."
echo "#################################################"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
