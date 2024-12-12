#!/bin/bash

# Monitoring free ram space

FREE_SPACE=$(free -h | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then 
	echo "WARNING, RAM is running low"
else 
	echo "RAM space is sufficient $FREE_SPACE M"
fi 
