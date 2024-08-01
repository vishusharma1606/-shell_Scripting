#!/bin/bash

#AND Operator

read -p "what is your age? " age
read -p "your country? " country
if [[ $age -ge 18 ]] && [[ $country == "india" ]]
then 
	echo "you can vote"
else 
	echo "you can't vote"
fi



#or operator

read -p "what is your age? " age 
read -p "do you have adhar card? " adharcard

if [[ $age -ge 18 ]] || [[ $adharcard == "yes" ]]
then 
	echo "you can vote"
else
	echo "you can't vote"
fi
