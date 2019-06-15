#!/usr/bin/env bash
ip_list="10.20.3.1 10.20.3.2 10.20.3.3"
for ip in $ip_list
do
        for count in {1..3}
                do
                        ping -c1 -W1 $ip &>/dev/null
                        if [ $? -eq 0 ];then
                                echo "$ip ping is ok."
                                break
                        else
                                echo "$ip ping is down: $count"
                                fail_count[$count]=$ip
                        fi
                done
        if [ ${#fail_count[*]} -eq 3 ];then
                echo "${fail_count[1]} ping is down!"
                unset fail_count[*]
        fi


done
