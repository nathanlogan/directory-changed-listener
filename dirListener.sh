#!/bin/sh

# This is the number of seconds between polls.
# This is probably the only value you want to edit.
intervalSeconds=5


# take an optional parameter for directory to listen on, otherwise listen to the current one
if [ -z "$1" ]
then
    dir="."
else
    dir="$1"
fi


# keep listening, when there's a difference, run dirChanged.sh
while true
do
    checkSum1=`ls -lR $dir | awk '{sum += $5} END{print sum}'`
    sleep $intervalSeconds
    checkSum2=`ls -lR $dir | awk '{sum += $5} END{print sum}'`

    if [ $checkSum1 -ne $checkSum2 ]
    then
        source dirChanged.sh
    fi
done
