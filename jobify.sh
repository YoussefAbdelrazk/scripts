#!/bin/bash



APP_NAME="$*"
DIR="$HOME/$*"



echo "============================================="
echo "Deploy Start ........."
echo "============================================="

cd "$DIR" || exit 1


echo " 1) pull latest updates from githup"
git pull 


echo " 2) install dependices"
npm install

echo " 3) Build project "
npm run build

echo " 4) start project uing pm2"
pm2 start npm --name "$APP_NAME" -- start || pm2 restart "$APP_NAME"


echo " 5) save proccess pm2"
pm2 save 

echo " 6) show pm2 list"
pm2 list 


echo "=============================================="
echo "Deploy finished ,successfully"
echo "=============================================="
