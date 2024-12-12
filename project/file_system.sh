#!/bin/bash

# check disk space and send alert

FU=$(df -h | egrep -v "Filesystem|devfs" | grep "/dev/disk3s1s1" | awk '{print $5}' | tr -d %)

if [[ $FU -gt 80 ]]
then
	echo "warning disk space is low"
else 	
	echo "All good"
fi
