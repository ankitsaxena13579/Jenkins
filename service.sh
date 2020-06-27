#!/bin/bash
service=apache2

if (( $(service $service status | awk "NR==5" |grep -i running | wc -l) > 0 ))
then
echo "$service is running!!!"
else
echo "$service is down!!! Restarting it"
sudo service $service start
fi

