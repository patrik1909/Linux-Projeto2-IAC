#!/bin/bash

echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y
echo "instalando apache"
apt-get install apache2 -y
echo "instalando unzip..."
apt-get install unzip -y

echo "Copiando arquivo para a pasta html"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

