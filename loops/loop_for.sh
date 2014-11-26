#!/bin/bash

for i in {1..5}
do
   echo "Welcome $i times"
done

echo ""

for (( c=1; c<=5; c++ ))
do
   echo "Welcome $c times"
done
echo ""
echo "Bash version ${BASH_VERSION}..."
#start end increment
for i in {0..10..2}
  do
     echo "Welcome $i times"
 done

#loop over directory
for file in /cygdrive/c/dev/spring-workspaces/porch/loops/*
do
	echo "${file}"
	#this condition is meaningless for this context.
	if [ "${file}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total  ${countNameservers} nameservers defined in ${file}"
		break
	fi
done

for name in Greg Sally Sandy Ted Hank
do
	echo "$name"
done

for now in {1..5}
do	
	echo $date
	sleep 1
done


