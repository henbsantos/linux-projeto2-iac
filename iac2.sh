#!/bin/bash

#atualizando
apt update

#instalando apache e unzip
apt install apache2 -y
apt install unzip -y

#cloando repositorio
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

#descompactando arquivos
unzip main.zip

#movendo arquivos para pasta do apache 
mv linux-site-dio-main/* /var/www/html/

#reiniciando apache
systemctl restart apache2 
