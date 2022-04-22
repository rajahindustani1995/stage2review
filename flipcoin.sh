#!/bin/bash

Head=0;

Tail=1;


flip=$((RANDOM%2))

case $flip in 
	$Head)
	echo "It is Head"
	;;

	$Tail)
	echo "It is Tail"
	;;
	
	*)
	echo "Please Flip The Coin"
	;;
esac
