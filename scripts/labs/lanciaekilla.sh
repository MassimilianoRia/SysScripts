#!/bin/bash
PIDS=`./lanciaeprendipid.sh`
echo "$PIDS"
for p in ${PIDS}; do
	kill -9 "$p"
done
