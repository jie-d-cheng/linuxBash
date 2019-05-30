#!/bin/bash

read -p "please input number and prefix: " num prefix

if [[ ! "$num" =~ ^[0-9]+$ ]];then
	echo "your input $num is not a number."
	exit
fi


if [ -z "$prefix" ];then
	echo "please input prefix which is more than one char."
	exit
fi



for i in `seq $num`
do
	filename=$prefix$i
	touch /tmp/$filename
	if [ $? -eq 0 ];then
		echo "$filename created..."
	fi
done
