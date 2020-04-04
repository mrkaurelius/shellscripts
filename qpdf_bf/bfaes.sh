#!/bin/bash

# learned 
# calculating elapsed time, output redirect, bash arihmetics,

FILENAME=$1
LINE_COUNT=$(wc -l $FILENAME | awk '{ print $1 }')

echo -n "filename: ${FILENAME}, pid: ${$} "
echo "line count: ${LINE_COUNT}"

let current_line=0
start=$SECONDS

while IFS= read -r password; do
  qpdf -password=${password} -decrypt hack.pdf out.pdf > /dev/null 2>&1 
  if [ $? -ne "2" ]
    then
      echo "found!"
      exit 0
  fi

  let current_line++

  echo "pid: ${$}, %$((($current_line * 100 / $LINE_COUNT)))"

done <  $FILENAME


end=$SECONDS
duration=$(( end - start ))
echo "stuff took $duration seconds to complete"

echo -n "pid: ${$} exits"
exit 0
