#!/bin/bash

read -p "enter the username " username

cnt=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

echo $cnt

if [ $cnt -eq 1 ]; then
       	echo "the user exits"
else
	echo "the user does not exit"

fi


