#!/bin/bash

#getting values form file

FILE="/Users/vishveksharma/shell_Scripting/file.txt"

for name in $(cat $FILE)
do 
	echo "name of the $name"
done
