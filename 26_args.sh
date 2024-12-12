#!/bin/bash 

set -x
#to access the argument
echo "first argument is $1"
echo "second argument is $2"

echo "All the arguments are $@"
echo "number  the arguments are $#"

#for loop to access the value from arguments 

for filename in $@
do 	
	echo "copying file $filename"
done
