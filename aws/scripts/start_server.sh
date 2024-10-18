#!/bin/bash

cd /var/www/tm-app
npm install --production
# Start the application with PM2
pm2 start build/index.js --name tm-app || pm2 restart tm-app  
pm2 save
