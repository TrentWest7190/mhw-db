#!/bin/bash

for filename in ./weapon_metadata/*.csv; do
	tablename=$(basename $filename | cut -d "." -f1)
	echo $tablename
done
