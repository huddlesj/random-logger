#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo "$d ERROR something happened in this execution."
      ;;
      "2") echo "$d DEBUG first loop completed."
      ;;
      "3") echo "{"date": "$d","jason": "test"}"
      ;;
      "*") echo 'Leslie fixed it'
      ;; 
   esac
done
