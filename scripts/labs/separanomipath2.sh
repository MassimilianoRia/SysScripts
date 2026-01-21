#!/bin/bash

IFS=/ read -r -a dirs <<< "$PATH"
for dir in "${dirs[@]}"; do
	echo $dir
done
