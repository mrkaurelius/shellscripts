#!/bin/bash

FILENAME=$1
LINE_COUNT=$(wc -l $FILENAME | awk '{ print $1 }')

echo -n "filename: ${FILENAME}, pid: ${$} "
echo "line count: ${LINE_COUNT}"

let current_line=0

while IFS= read -r password; do
  qpdf -password=${password} -decrypt hack.pdf out.pdf > /dev/null 2>&1 
  if [ $? -ne "2" ]
    then
      echo "found!"
      exit 0
  fi

  if [ $(($current_line % ($LINE_COUNT / 100))) -eq "0" ]
    then
      echo "pid: ${$}, %$((($current_line / $LINE_COUNT) * 100))"
      echo "${current_line}"
  fi
  let current_line++

done <  $FILENAME
