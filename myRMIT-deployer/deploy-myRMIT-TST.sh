#!/bin/bash
echo "Welcome to the myRMIT deployment script, sit back and relax"

readonly DATADIR=data
readonly SRCDIR=source


sh chmoding.sh $DATADIR/

#clean webdir
rm -f $SRCDIR/*

#copy war files from data into the src directory for the queue
#make sure the queue is running
cp -p $DATADIR/*.war $SRCDIR/.

#clean datadir
rm -f $DATADIR/*


