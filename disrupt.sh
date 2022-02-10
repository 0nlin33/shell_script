#!/bin/bash

echo "hello world!"

tomorrow=$(date -d "+1 day" "+%d")
echo "Coming: $tomorrow"

today=$(date +"%d")
echo "Now: $today"

min=$(date +"%M")
echo "Current minute : $min"


max=5
echo "Value assingn: $max"

this=0
echo "checking against: $this"


while [ "$today" -lt "$tomorrow" ]
do
    min=$(date +"%M")
    result=$(expr $min % $max)
    if [ "$result" == "$this" ]; then
            code start
    fi
done
