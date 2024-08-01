#!/bin/bash

#math expression

x=20
y=10


let mul=$x*$y
let add=$x+$y
let sub=$x-$y
let div=$x/$y
echo "$mul"
echo "$add"
echo "$sub"
echo "$div"


x=20
y=10

read x
read y

echo "$((x+y))"
echo "$((x-y))"
echo "$((x*y))"
echo "$((x/y))"
