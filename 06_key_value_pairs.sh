#!/bin/bash

# Declare the associative array
declare -A myArray

# Initialize the associative array with key-value pairs
myArray=( [name]="vishu" [age]="30" )

# Access and print values from the associative array
echo "Name: ${myArray[name]}"
echo "Age: ${myArray[age]}"
