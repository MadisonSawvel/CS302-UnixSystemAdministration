#!/bin/bash
amount=0
input=1
w | tr -s ' ' | cut -d' ' -f1,5 | while read user time
do
	if [ $amount -lt $input ]; then
		let amount=$amount+1
	else
		if [[ "$time" == *"s"* ]]; then
			echo $user currently active, idle time is: $time
		fi
	fi
done
