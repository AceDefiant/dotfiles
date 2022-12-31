#!/bin/sh

status=$(mullvad status | awk '{print $1}')

if [ $1 = "check" ]
then
	if [ $status = "Disconnected" ]
	then
		echo ""
		exit 0
	else
		echo ""
		exit 0
	fi
fi

if [ $status = "Disconnected" ]
then
	mullvad connect > /dev/null
	echo ""
else
	mullvad disconnect > /dev/null
	echo ""
fi
