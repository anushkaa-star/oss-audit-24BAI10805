#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]
then
    echo "File not found"
    exit 1
fi

while read LINE
do
    echo "$LINE" | grep -iq "$KEYWORD"
    if [ $? -eq 0 ]
    then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
