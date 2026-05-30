#!/bin/bash	


read -p "Enter A Number : " count

until [ $count -gt 5 ]
do

	echo "$count"
	(( count++ ))
done 
