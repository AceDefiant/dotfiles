#!/bin/sh

status=$(nmcli | awk 'NR==1 {print $2}')

case "$status" in
	"connected") echo "";;
	"disconnected") echo "睊";;
	"unavailable") echo "";;
esac
