#!/bin/bash





sum ()
{
let result=$1+$2
echo "The sum is: $result"
}

mul ()
{
let result=$1*$2
echo "The mul is: $result"
}

sum 5 5
mul 5 5


