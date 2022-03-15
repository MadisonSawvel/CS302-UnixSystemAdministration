#!/bin/bash
ps augx | while read user pid cpu mem vsz rss junk
do
	let vsz=$vsz/1000
	cpu=${cpu%.*}
		if [ $vsz -gt 30 ] || [ $cpu -ge 20 ]; then
			echo user: $user, ram: ${vsz}, cpu: ${cpu%}
		fi
done
