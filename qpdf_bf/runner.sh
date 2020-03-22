#!/bin/bash

# TODO
# split wordlis file 8 file
echo "runner pid ${$}"

split -d -n l/4 wordlist.txt

SPLITED_FILES=$(ls x*)
filenames=( $SPLITED_FILES ) # filename array

for filename in "${filenames[@]}"
do
  nice -19 bash ./bfaes.sh $filename &
  #echo "$filename"
done
