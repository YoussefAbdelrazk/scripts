#!/bin/bash

#this is first number input

read -p "Enter First Number : " num1
#this is second number input
 
read -p "Enter Second Number : " num2

#this is choose message 
echo "Choose the opreation"

# this is select 
select operator in add sub multi div quit
do 
# this is case statment 

	case $operator in 
	add)
	echo "$num1 + $num2 = $(( $num1 + $num2))"
	;;
	sub)
	echo "$num1 - $num2 = $(( $num1 - $num2))"
	;;

	multi)
	echo "$num1 * $num2 = $(( $num1 * $num2))"
	;;
	div)
	echo "$num1 / $num2 = $(( $num1 / $num2))"
	;;
	quit)
	break
	;;
	*)
	echo "invalid optoin "
	esac

done 
