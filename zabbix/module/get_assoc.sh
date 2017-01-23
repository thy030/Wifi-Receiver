#!/bin/bash

	ASSOCSTART=`cat /var/log/syslog |grep "start assoc" |tail -n 1  |awk '{print $7}' |sed 's/]//g'` 
	ASSOCDONE=`cat /var/log/syslog |grep "assoc success" |tail -n 1  |awk '{print $7}' |sed 's/]//g'`

	((result = $ASSOCDONE - $ASSOCSTART))
	echo $result
