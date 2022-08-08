#!/bin/env bash
while true 
do

read tell1
 
	case $tell1 in
	[a])
		echo "a"
			;;
	[b]) 
		echo "b"
	esac

read tell2
 
	case $tell2 in
	[y])
		echo "yes"
			;;
	[n]) 
		return
	esac
done
