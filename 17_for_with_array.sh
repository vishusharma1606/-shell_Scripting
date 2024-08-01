#!/bin/bash

myarray=( 1 2 3 4 5 hello )

lenght=${#myarray[*]}

for (( i=0;i<$length;i++ ))
do 
	echo "value of the array is ${myarray[$i]}"
done
