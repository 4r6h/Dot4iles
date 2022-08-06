##!/bin/bash
#if [ ! -d /opt/backup ]; then
#sudo mkdir /opt/backup
#else
#echo already exist
#fi
while true
do
printf 'Please enter a character: '
IFS= read -r c
case $c in
  ([[:lower:]]) echo lowercase letter;;
  ([[:upper:]]) echo uppercase letter;;
  ([[:alpha:]]) echo neither lower nor uppercase letter;;
  ([[:digit:]]) echo decimal digit;;
  (?) echo any other single character;;
  ("") echo nothing;;
  (*) echo anything else;;
esac
done
##!/usr/bin/bash 
#cmd="{tr '[A-Z]' '[a-z]'}"
#        echo -n "Please enter yes or no (y/n)?"
#        read yesno
#        yesno="$yesno |"
#        echo $yesno
