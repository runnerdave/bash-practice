#!/bin/bash

echo -n "Enter input file:"
read INPUTFILE 
echo -n "Enter output file:"
read OUTPUTFILE 

echo "you have entered: \"$INPUTFILE\" as input file and \"$OUTPUTFILE\" as output file"

if [ -e $INPUTFILE ]; then
    grep '[^[:blank:]]' < $INPUTFILE > $OUTPUTFILE
    exit 0
else
    echo "The input file: \"$INPUTFILE\" does not exist, run the program again"
    exit 1
fi

