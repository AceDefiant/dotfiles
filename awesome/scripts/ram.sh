#!/bin/sh

ram_perc=$(free | awk 'NR==2 {print int(($3 + $5)/$2 * 100.0)}')

echo "RAM ${ram_perc}%"
