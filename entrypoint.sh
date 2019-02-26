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
      "4") echo '
{
	"timestamp": "2018-05-24 23:15:07",
	"id": 0,
	"class": "connection",
	"event": "connect",
	"connection_id": 12,
	"account": {
		"user": "user",
		"host": "localhost"
	},
	"login": {
		"user": "user",
		"os": "",
		"ip": "::1",
		"proxy": ""
	},
	"connection_data": {
		"connection_type": "tcp/ip",
		"status": 0,
		"db": "bank_db"
	}
}'
      ;; 
   esac
done
