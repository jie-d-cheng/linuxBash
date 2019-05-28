#!/bin/bash
read -p "please input a ip: " ip #提示符结束的引号和变量ip之间必须得有空格，否则ip会被显示出来
ping -c1 $ip &>/dev/null
if [ $? -eq 0 ]  #[]判断，两边得有空格
then
	echo "$ip is up" 
else
	echo "$ip is down"
fi
