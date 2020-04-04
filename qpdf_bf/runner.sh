#!/bin/bash

# TODO: break pdf password by bruteforce, with parallelisation  

# learned:
# array from string, for in loop, detached process

echo "runner pid ${$}"

split -d -n l/8 wordlist.txt

SPLITED_FILES=$(ls x*)
filenames=( $SPLITED_FILES ) # filename array

for filename in "${filenames[@]}"
do
  nice -19 bash ./bfaes.sh $filename &
done

echo "runner exits"
exit 0
