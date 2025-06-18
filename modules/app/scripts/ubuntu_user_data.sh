#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive
apt update -y
apt install -y postgresql-client unzip
# 
apt install -y nginx
systemctl enable nginx
systemctl start nginx
# 
apt update -y
apt install -y certbot python3-certbot-nginx
# 
apt update -y
apt install -y unzip curl
cd /tmp
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
./aws/install
# 
echo "Setup done" > /var/log/userdata.log