#!/bin/bash

WRITEFILE=$1;
WRITESTR=$2;

if [ "$WRITEFILE" == "" ] || [ "$WRITESTR" == "" ]; then
  exit 1;
else
  mkdir -p $(dirname "$WRITEFILE");
  echo $WRITESTR > $WRITEFILE;
fi
