#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# install pm2 which is a productions process manager for Node.js with the built-in load balancer
sudo npm install -g pm2
#stop any instance of our aplication that is already running
pm2 stop simple_app
#change directory to the project directory
cd SimpleApplication/ 
#install all the dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER . server.crt
#start the application with the process name example_app usim pm2
pm2 start ./bin/www --name simple_app