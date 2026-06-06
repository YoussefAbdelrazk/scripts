#!/bin/bash


read -p "Enter Your username: " user
read -p "Enter your full-name: " name

INFO=$user,$name

read -p "Please , Confirm that you have entered the correct information . is everything correct? [y/n]" input


case $input in 

	N | n )
	exit
	;;

	Y | y )
	echo $INFO >> employee.csv 
	;;
	*)
	exit
	;;

esac

echo "Your data has been stored successfuly : $INFO "

