#!/bin/bash

#generating a random no b/w 1 to 6

NO=$(( $RANDOM%6 + 1 ))
echo "number is $NO"
