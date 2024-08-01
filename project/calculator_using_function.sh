#!/bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Which operation do you want to perform (ex +, -, *, /): " operation

function calculator {
	#read -p "Enter the first number:" a
	#read -p "Enter the second number:" b
	#read -p "Which operation do you want to perform (ex +,-,*,/):" operation

	if [[ "$operation" == "+"  ]]
	then 
		echo "the addition of 2 number is: $((a+b))"

	elif [[ "$operation" == "-"  ]]
	then
		echo "the substraction of 2 number is: $((a-b))"

	elif [[ "$operation" == "*"  ]]
	then 
		echo "the multiplication of 2 number is: $((a*b))"

	elif [[ "$operation" == "/"  ]]
	then 
		echo "the division of 2 number is: $((a/b))"

	else
   		echo "Invalid operation. Please use +, -, *, or /."
	fi

}

calculator

