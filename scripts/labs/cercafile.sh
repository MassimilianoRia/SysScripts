#!/bin/bash

for name in /usr/include/?[c-g]*; do
  if [[ ${#name} -lt 18 || ${#name} -gt 23 ]]; then
    echo "$name"
  fi
done
