#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo docker pull nginx
sudo docker run -d -p 80:80 nginx 