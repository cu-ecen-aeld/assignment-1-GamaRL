#!/bin/bash

FILESDIR=$1;
SEARCHSTR=$2;

if [ $FILESDIR == "" ] || [ $SEARCHSTR == "" ];
then
  exit 1;
else
  if [ -d $FILESDIR ]
  then
    X=$(ls -1 $FILESDIR | wc -l)
    Y=$(grep $SEARCHSTR $FILESDIR/* | wc -l)
    echo "The number of files are ${X} and the number of matching lines are ${Y}";
  else
    exit 1;
  fi
fi

