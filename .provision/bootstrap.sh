#!/usr/bin/env bash

# update the package db
sudo apt-get update -q

#
# node.js 6.x
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update -q && sudo apt-get install -y nodejs
# optional
sudo apt-get install -y build-essential

#
# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -q && sudo apt-get install -y yarn

##
## php, zip and git
#sudo apt-get -y install php5 php5-cli php5-fpm zip unzip git

##
## nginx
#sudo apt-get -y install nginx
#sudo service nginx start

## set up nginx server
#sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
#sudo chmod 644 /etc/nginx/sites-available/site.conf
#sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
#sudo service nginx restart

##
## mysql
#export DEBIAN_FRONTEND=noninteractive
#echo "mysql-server mysql-server/root_password password root" | sudo debconf-set-selections
#echo "mysql-server mysql-server/root_password_again password root" | sudo debconf-set-selections
#sudo apt-get -y install mysql-server php5-mysql php5-mcrypt php5-gd 
#unset DEBIAN_FRONTEND
## Run the secure installation script for mySQL. Take defaults.
## sudo /usr/bin/mysql_secure_installation --use-default
## Create a schema to test
#DB_NAME="testDB"
#mysql -u root -p"root" -e "CREATE DATABASE ${DB_NAME};"

##
## install Python and verify Python
# sudo apt-get -y install python3 python3-pip
# python3 --version

##
## other
## clean /var/www
#sudo rm -Rf /var/www
## symlink /var/www => /vagrant
#sudo ln -s /vagrant/ /var/www

