#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-5 -n 1)
   #instruction=4
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo "$d ERROR something happened in this execution."
      ;;
      "2") echo "$d ERROR {"date": "$d","jason": "test"}"
      ;;
      "3") echo "$d ERROR {"date": "$d","jason": "test"}"
      ;;
      "4") echo "$d ERROR {'"timeMillis":1551797402572,"thread":"pool-991341-thread-1"'}"
      ;;
      "5") echo '{"timeMillis":1552505385388,"thread":"http-nio-8000-exec-9","level":"ERROR","loggerName":"com.delta.api.checkin.controller.error.ApiErrorDecoder","message":"WSI Fault>> {\"exceptions\":[{\"code\":\"travelparty.013.000\",\"description\":\"Resource Errors\",\"type\":\"ERROR\"}]}","endOfBatch":false,"loggerFqcn":"org.apache.logging.slf4j.Log4jLogger","contextMap":{"TRANSACTION_ID":"TEST-DEVICE-19031201"},"threadId":57,"threadPriority":2}'
      ;;
   esac
done
