#!/bin/bash

dd if=/dev/urandom of=/dev/stdout bs=32K count=1024 2> /dev/null | pv | xxd | awk '{print $2" "$3" "$4" " $5}'
