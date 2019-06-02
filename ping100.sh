#!/bin/bash
ip=172.17.0.

for t in {2..254}
do
ipx=$ip$t
ping -c1 -W1 $ipx &>/dev/null
if [ $? -eq 0 ]; then
	echo "$ipx"|tee -a ip.txt

fi
done
