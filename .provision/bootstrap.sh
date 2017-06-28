#!/usr/bin/env bash

## update the package db
#echo "apt-get updating..."
#sudo apt-get update -qq

#
# utilities
sudo apt-get update -qq && sudo apt-get install -y zip unzip git
#
# dev
sudo apt-get update -qq && sudo apt-get install -y make gcc g++

#
# node.js 6.x
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get update -qq && sudo apt-get install -y nodejs
# optional: build-essential
sudo apt-get install -y build-essential
#
# optional: node-pre-gyp
sudo npm install node-pre-gyp -g


#
# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -qq && sudo apt-get install -y yarn

#
# sqlite3
sudo apt-get update -qq && sudo apt-get install -y libsqlite3-dev sqlite3

##
## nginx
#sudo apt-get update -qq && sudo apt-get install -y nginx
#sudo service nginx start

## set up nginx server
#sudo cp /vagrant/.provision/nginx/nginx.conf /etc/nginx/sites-available/site.conf
#sudo chmod 644 /etc/nginx/sites-available/site.conf
#sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
#sudo service nginx restart

##
## install Python and verify Python
# sudo apt-get update -qq && sudo apt-get install -y python3 python3-pip
# python3 --version

##
## other
## clean /var/www
#sudo rm -Rf /var/www
## symlink /var/www => /vagrant
#sudo ln -s /vagrant/ /var/www
