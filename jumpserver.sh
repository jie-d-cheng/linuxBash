#!/bin/bash
trap "" HUP INT OUIT TSTR
ssh1=172.17.0.2
ssh2=172.17.0.3
while true; do
	        clear
		        cat <<-EOF
        1. ssh1
        2. ssh2
        EOF
	        read -p "input number: " num

		        case "$num" in
				                1)
							                        ssh alice@$ssh1
										                        ;;
													                2)
																                        ssh alice@$ssh2
																			                        ;;
																						                *)
																									                        echo "input error!"
																												                        ;;
																															        esac
																															done
