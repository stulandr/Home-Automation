#!/bin/bash

## Created by: stulandr
## Date: August 01, 2018
## Server:	nuc
## to be run from: executeCommandLine("/usr/local/bin/motion_snapshot.sh")

## variables
MOTIONDIR=/path/to/snapshot/directory
TMPOUT=/tmp/snapshots.log

## append timestamp to log file
echo "Script ran: `date +"%H:%M:%S %m-%d-%Y"` " >> $TMPOUT

curl -m 10 -o $MOTIONDIR/`date +"%Y%m%d-%H%M%S"`.jpg http://admin:password@10.1.1.253/Streaming/channels/1/picture
sleep 5
curl -m 10 -o $MOTIONDIR/`date +"%Y%m%d-%H%M%S"`.jpg http://admin:password@10.1.1.253/Streaming/channels/1/picture
sleep 5
curl -m 10 -o $MOTIONDIR/`date +"%Y%m%d-%H%M%S"`.jpg http://admin:password@10.1.1.253/Streaming/channels/1/picture
sleep 5

## append spaces to end of log file  
echo "" >> $TMPOUT
echo "" >> $TMPOUT

## Exit Script
exit 0
