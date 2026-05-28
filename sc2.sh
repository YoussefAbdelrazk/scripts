#!/bin/bash

#this is input for user Grade
read -p "Enter Your Grade : " grade

#this is case statement
case $grade in
	8[5-9] | 9[0-9] | 100)
	echo "Your Grade is : A"
	;;
	7[5-9] | 8[0-4])
	echo "Your Grade is : B "
	;;
	6[5-9] | 7[0-4])
	echo "Your Grade is : C"
	;;
	6[0-4])
	echo "Your Grade is : D"
	;;
	*)		
	echo "Your Grade is : F "
	;;
esac 


