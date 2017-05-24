#!/bin/bash

readonly PRD_HOST=casxprdap
readonly ARC_HOST=casxarcap

function curling {
	local myresult=curl $1
}

i="1"

while [ $i -lt 9 ]
do
	echo $i
	healthcheck="http://${PRD_HOST}0$i.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"

	echo $healthcheck
	ARRAY[$i]=$(curling $healthcheck)
	
	i=$[$i + 1]
done

#print array contents

for ((i = 0; i < ${#ARRAY[@]}; i++)); do
  	echo "Element $i: '${ARRAY[i]}'"
done