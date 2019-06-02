#!/bin/bash

if [ $# = 0 ];then
	echo "usage: $0 file"
	exit 1
fi

if [ ! -f $1 ];then
	echo "error file"
	exit 2
fi
#for在处理文件时按回车分割，而不是tab或者空格
#IFS=$'\n',等同于下面的回车
IFS='
'
for line in `cat $1`
do
	user=`echo "$line"|awk '{print $1}'`
	pass=`echo "$line"|awk '{print $2}'`
	id $user &>/dev/null
	if [ $? -eq 0 ];then
		echo "$user has already existed..."
	else
		useradd $user
		echo "$pass"|passwd --stdin $user &>/dev/null
		if [ $? -eq 0 ];then
			echo "$user created successfully!"
		fi
	fi
done
