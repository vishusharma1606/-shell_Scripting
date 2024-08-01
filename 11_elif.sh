#!/bin/bash 


read -p "enter the marks: " marks

if [[ $marks -ge 80 ]]
then 
	echo "first division"

elif [[ $marks -ge 60 ]]
then 
	echo "you are second"

elif [[ $marks -ge 40 ]]
then
	echo "you are third division"
else
	echo "you are fail"
fi
