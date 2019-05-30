#!/bin/bahs

read -p "please input the user name: " user

id $user &>/dev/null
if [ $? -ne 0 ];then
	echo "no such name: $user"
	exit 1
fi

read -p "Are you sure?[y/n]" action

case $action in
	y|Y|yes|YES)
		userdel -r $user	
		echo "$user has been deleted permanently!"
		;;
	n|N|no|NO)
		echo "nothing changed."
		exit 2
	*)
		echo "error input."
		;;
esac
