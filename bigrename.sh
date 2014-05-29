#!/bin/bash

for EACH in *
do
  if [[ -f $EACH ]]; then
  OLD_NAME=`echo $EACH | sed 's/\.html//g'`
  echo "Finding files with references of $OLD_NAME and making them into $EACH"
  find -type f | xargs sed "s/href=\"\/$OLD_NAME\"/href=\"\/$EACH.html\"/g" 
   
  fi
done

