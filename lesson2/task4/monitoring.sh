#!/bin/bash

# echo "Press [CTRL+C] to stop monitoring"

while true 
do
	CPU_USED=$(top -bn1 | awk '/Cpu/ {print $2}')
	MEM_USED=$(free -m | awk '/Mem/ {print $3}')
	MEM_FREE=$(free -m | awk '/Mem/ {print $4}')
	echo "$(date -R) 	CPU usage: $CPU_USED, Used memory: $MEM_USED MB, Free memory: $MEM_FREE MB" >> /var/log/monitoring.log
	if [[ $MEM_FREE < 500 ]]
	then
		echo "$(date -R) 	Warning! Not enough free memory!" >> /var/log/monitoring.log
	fi
	if [[ $CPU_USED > 90 ]]
	then
		echo "$(date -R) 	Warning! High CPU load!" >> /var/log/monitoring.log
	fi
	sleep 60
done	
