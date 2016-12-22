#!/bin/bash
export DIR="$1"
myVar=0
# init
# look for empty dir 
if [ "$(ls -A $DIR)" ]; then
     echo "Take action $DIR is not Empty"
     myVar=1
else
    echo "$DIR is Empty"
fi