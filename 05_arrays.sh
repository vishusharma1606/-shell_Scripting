#!/bin/bash 

#normal arrays

myarray=( 1 2 Hello Vishu)

echo "value of 1rd index is  ${myarray[0]}"


echo "value of all index is ${myarray[*]}"


#how to find the numbers in an array
echo "${#myarray[*]}"

echo "the value of 2-3 index is ${myarray[*]:2:3} "

#updateing an array

myarray+=(new 30 40)

echo "${myarray[*]}"
