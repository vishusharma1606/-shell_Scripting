#!/bin/bash 

#we can take a user input for the users

read -p "enter the marks: " marks 
if [[ $marks -gt 40 ]]
then 
	echo "you are pass"
else
	echo "you are fail"
fi
