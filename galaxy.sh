#!/bin/bash



APP_NAME="GALAXY-GAMING"
DIR="$HOME/GALAXY-GAMING"

echo "=================================="
echo "Starting Deployment"
echo "=================================="

cd "$DIR" || exit 1

echo " 1) Pull latest code from githup"
git pull 

echo " 2) Install dependencies "
npm install

echo " 3) Build project "
npm run build

echo " 4) restart app with pm2 "
pm2 restart "$APP_NAME" || pm2 start npm --name "$APP_NAME" -- start

echo " 5) save pm2 process list "
pm2 save

echo " 6) show pm2 status"

pm2 list 



echo "===================================="
echo "Deployment finished "
echo "====================================" 
