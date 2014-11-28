#!/usr/bin/bash

#%m is month
#%M is minute
#%D is date
#%d is day
#%Y is 4 digit year
#%y is 2 digit year
#%T is time hh:mm:ss
#%t nothing
#%s seconds since epoch
#%Y-%m-%d %T - regular timestamp


#two functions: timestamp and datestamp
timestamp() {
	date +"%T"
}

dateTimeStamp() {
	date +"%Y-%m-%d %T"
}

echo $(date +"%Y-%m-%d %T")

timestamp1=$(date +%s)
echo "seconds since epoch :: $timestamp1"

ts=`timestamp`

echo "timestamp (date +%T) $ts"

now=$(date +"%Y-%m-%d %T")

echo "now, date time stamp :: $now"
echo `dateTimeStamp`
echo -e "$now :: I will just append to my custom log file \n" >> custom_log.txt

