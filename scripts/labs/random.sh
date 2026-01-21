#!/bin/bash

counter=0
while (( ($RANDOM % 10) != 2 )); do (( counter++ )); done
echo $counter
