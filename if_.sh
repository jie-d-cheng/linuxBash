#!/bin/bash


ping -c1 www.baidu.com &>/dev/null
if [ $? -eq 0 ]; then

	echo "network is up"	
	
elif ping -c1 10.20.3.1 &>/dev/null;then
	echo "check dns..."
else
	echo "check ip config..."
fi
