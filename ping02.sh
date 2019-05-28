#!/bin/bash
ip=10.20.3.1
if ping -c1 $ip &>/dev/null
then
	echo "$ip is up" 
else
	echo "$ip is down"
fi
