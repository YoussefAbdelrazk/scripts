#!/bin/bash
read -p "enter first number : " num1
read -p "enter second number : " num2
if [ $num1 -gt $num2 ]
then 
	echo "you are right"
else 
	echo "you are wrong ,try again"
fi


