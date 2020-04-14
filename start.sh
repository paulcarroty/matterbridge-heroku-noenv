#!/bin/bash

while true
do
	curl --silent --head https://${APP_NAME}.herokuapp.com/api/ping > /dev/null
	sleep 10
done
