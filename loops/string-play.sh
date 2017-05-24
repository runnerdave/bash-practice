#!/bin/bash

function curling {
	echo "curling CAS $1"
	curl $1
}

echo "playing with strings"

i="1"
ARRAY=()

while [ $i -lt 9 ]
do
	echo $i
	cas="http://casxprdap0$i.int.its.rmit.edu.au:8080/rmitcas/healthcheck.jsp"

	ARRAY[$i]=$cas
	
	i=$[$i + 1]
done

#print array contents

for ((i = 0; i < ${#ARRAY[@]}; i++)); do
  	echo "Element $i: '${ARRAY[i]}'"
done