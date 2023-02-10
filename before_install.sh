#!/bin/bash
cd /home/ec2-user/server
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
yum -y install nodejs npm
