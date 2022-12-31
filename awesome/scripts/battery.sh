#!/bin/sh

RED='\033[1;31m'
NC='\033[0m'

bat_perc=$(acpi | awk '{print $4}' | sed 's/[^0-9]//g')
charge_state=$(acpi | awk '{print $3}' | sed 's/[^A-Za-z]//g')

result=""

if [ $charge_state == "Charging" ]; then result="  "
elif (( $bat_perc <= 15 )); then result="!  "
elif [ $charge_state == "Not" ]; then bat_perc=$(acpi | awk '{print $NF}' | sed 's/[^0-9]//g')
fi

if [ $charge_state == "Charging" ]; then result="${result} ${bat_perc}%"
elif (( $bat_perc > 87 )); then result="${result} ${bat_perc}%"
elif (( $bat_perc > 62 )); then result="${result} ${bat_perc}%"
elif (( $bat_perc > 37 )); then result="${result} ${bat_perc}%"
elif (( $bat_perc > 15 )); then result="${result} ${bat_perc}%" 
elif (( $bat_perc > 5 )); then result="${result} ${bat_perc}%"
else result="${result} ${bat_perc}%"
fi

echo "$result"
