#!/bin/bash
ip=10.20.3.1
ping -c1 $ip &>/dev/null
if [ $? -eq 0 ]  #[]判断，两边得有空格
then
	echo "$ip is up" 
else
	echo "$ip is down"
fi
