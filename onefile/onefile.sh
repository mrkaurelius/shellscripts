#!/bin/bash

echo -n 'file extention: '
read FILE_EXTENTION
MERGED_FILE='merged.txt'

# truncate file
cat /dev/null > $MERGED_FILE
FILES=$(ls | grep  "\.${FILE_EXTENTION}$") 
NS='##############################'

for FILENAME in $FILES
  do
    printf '%s %-25s START %s\n' $NS $FILENAME $NS >> $MERGED_FILE
    cat $FILENAME >> $MERGED_FILE
    printf '%s %-25s   END %s\n\n' $NS $FILENAME $NS >> $MERGED_FILE
  done


#TODO: 
# implement parameters
# make recursive
