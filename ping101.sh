#!/bin/bash
ip=172.17.0.
>ip.txt
for t in {2..254}
do
	{
	ipx=$ip$t
	ping -c1 -W1 $ipx &>/dev/null
	if [ $? -eq 0 ]; then
		echo "$ipx"|tee -a ip.txt
	
	fi
	}&

done

wait #等待此shell中的所有后台任务结束，即for中的ping

echo "ping test done..."
