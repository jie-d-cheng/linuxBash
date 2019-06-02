#!/bin/bash
while :
do
read -p "please enter prefix, password & num [abc 123 5]: " prefix password num

printf " user infomation:
-----------------------------------
user prefix: $prefix
user password: $password
user number: $num
-----------------------------------
"

read -p "Are you sure?[y/n]" action
if [ "$action" = "y" ]; then
	break

fi
done


for t in `seq -w $num`
do
	usern=$prefix$t
	id $usern &>/dev/null
	if [ $? -eq 0 ]; then
		echo "$usrn already existed..." 
	else
		useradd $usern
		echo "$password" |passwd --stdin $usern &>/dev/null
		if [ $? -eq 0 ]; then
			echo "$usrn has been created!"
		fi
	fi
done
