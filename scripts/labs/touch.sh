#!/bin/bash

mkdir BUTTAMI
touch BUTTAMI/"*" BUTTAMI/"**" BUTTAMI/"***" BUTTAMI/";;"
ls BUTTAMI/*

for file in BUTTAMI/*; do touch "$file.txt"; done

cp -R /usr/include BUTTAMI/
find BUTTAMI/ -type d -print

rm -rf BUTTAMI/
