#!/bin/bash

SUM=0
for name in dir1/*[af]* ; do 
  ADDENDO=$( head -n 3 $name | tail -n 1 );
  ((SUM=${SUM}+${ADDENDO}));
done
echo $SUM

