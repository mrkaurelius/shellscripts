#!/bin/bash

while [[ "$#" > 0 ]]; do case $1 in
  -n|--number-of-people) NUMBER_OF_PEOPLE="$2"; shift;shift;;
  -s|--section-id) SECTION_ID="$2";shift;shift;;
  -v|--verbose) VERBOSE=1;shift;;
  *) echo "Unknown parameter passed: $1 exiting"; exit 1; shift;;
  # *) echo "Unknown parameter passed: $1"; shift; shift;;
esac; done


echo $NUMBER_OF_PEOPLE
echo $SECTION_ID
echo $VERBOSE
