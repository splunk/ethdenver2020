#/bin/sh

#Quick and dirty script to set everything up in linux.
#If you already have docker and docker-compose skip to 

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
wget https://raw.githubusercontent.com/splunk/ethdenver2020/master/docker-compose.yaml
wget https://raw.githubusercontent.com/splunk/ethdenver2020/master/splunk.yml
wget https://github.com/splunk/ethdenver2020/raw/master/abis.tgz
tar -xf abis.tgz
sudo docker-compose up -d
echo "Please wait 60 seconds and go to http://<this host>:8000. Login with admin/changeme"

