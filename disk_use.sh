#!/bin/bash
mail_user=deepin
disk_use=$(df -Th|egrep '/$'|awk '{print $(NF-1)}'|awk -F"%" '{print $1}' )

if [ $disk_use -ge 10 ];then
	echo "`date +%F_%H` disk: ${disk_use}%" |mail -s "disk warning.." $mail_user 

fi
