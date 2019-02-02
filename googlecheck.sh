#!/bin/bash

status=`curl -s --head http://www.google.com |grep '200 OK' |wc -l`

if [ $status -eq 1 ]; then
	wynik="OK"
else
	wynik="ERROR"
fi

watch -n 3 -t 'echo $(date) status = '$wynik 
