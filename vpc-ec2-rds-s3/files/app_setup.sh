#!/bin/bash

sudo yum update -y

sudo amazon-linux-extras install nginx1 -y

# Deploy a simple HTML page
echo "<html><body><h1>Hello from my custom web server!</h1></body></html>" > /usr/share/nginx/html/index.html

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx