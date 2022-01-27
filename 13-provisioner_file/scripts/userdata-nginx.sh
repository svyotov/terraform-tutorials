#!/bin/bash
sudo yum update
yum -y install nginx
systemctl start nginx
echo "<h1>Welcome to DevOps Classes, Keep Learning</h1>" | tee /usr/share/nginx/html/index.html
systemctl start nginx
