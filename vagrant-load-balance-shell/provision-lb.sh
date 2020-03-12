#!/bin/bash

echo "Starting Provison: LOAD BALANCER"
sudo apt-get update -y 
sudo apt-get -y install nginx
sudo service nginx stop
sudo rm -rf /etc/nginx/sites-enabled/default
sudo touch /etc/nginx/sites-enabled/default

echo "upstream testapp {
	server 192.168.10.12;
	server 192.168.10.13;
}

server {
	listen 80 default_server;
	listen [::]80 default_server ipv6only=on;
	server_name localhost;
	root /usr/share/nginx/html;
	index index.html index.htm;

	location / {
	proxy_pass http://testapp;
	}
	
}" >> /etc/nginx/sites-enabled/default
sudo service nginx start
echo "LOAD BALANER" >> /usr/share/nginx/html/index.html
echo "Provision of LB is complete"

