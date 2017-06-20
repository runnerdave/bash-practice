#!/bin/bash 
function quit {
    exit
}  
function e {
	echo $1 
}  
function returnSomething {
	local myresult="--$1--"
	echo "$myresult"
}
e Hello
e World
result=$(returnSomething holas)
echo $result
quit
echo foo 