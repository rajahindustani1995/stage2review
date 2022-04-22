#!/bin/bash

c=$((RANDOM%2))
n=20
echo $c
for ((c=0 ; c*n ;c++)) 
	if [ $c == 1 ];
	then
        	echo "It is HEAD"

	else
        	echo "It is TAIL"
	fi
