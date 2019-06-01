#!/bin/bash


menu() {
cat <<-EOF
#################################################
#						#
#	h. help					#	
#	f. disk partition			#
#	d. filesystem mount			#	
#	m. memory				#	
#	u. system load				#
#	q. exit					#
#						#	
#################################################
EOF
}

menu


while true;
do
read -p "Please input [h for help]: " action

case "$action" in
	h)
		clear
		menu
		;;
	f)
		fdisk -l
		;;
	d)
		df -Th
		;;
	m)
		free -m
		;;
	u)
		uptime
		;;
	q)
		#exit
		break
		;;
	"")
		;;
	*)
		echo "input error."
		;;
esac
done
echo "toolkit finished..."

