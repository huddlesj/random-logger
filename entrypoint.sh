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
      "4") echo '{"timeMillis":1551797402572,"thread":"pool-991341-thread-1","level":"INFO","loggerName":"com.delta.api.checkin.aspect.LogHandlerWs","message":"WSI>><?xml version=\"1.0\" encoding=\"UTF-8\"?><CheckHealthResponse xmlns=\"http://soa.delta.com/autocheckin/v1\" xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\"><ServiceHealthStatus>OK</ServiceHealthStatus><HealthMessage><SystemName>AutoCheckIn</SystemName><Message/></HealthMessage></CheckHealthResponse>","endOfBatch":false,"loggerFqcn":"org.apache.logging.slf4j.Log4jLogger","contextMap":{},"threadId":1916155,"threadPriority":5,"timeStamp":"2019-03-05 14:50:02,572","transactionId":"${ctx:TRANSACTION_ID}","environment":"prd","timestamp":1551797402572,"stream":"stdout","docker":{"container_id":"9acb405bf148b4421ccf82b84a8aac58d1b186bd883cc45d21d318f77c33f816"},"kubernetes":{"container_name":"checkin-api","namespace_name":"checkin-api-prd","pod_name":"checkin-api-4-n4zzp","pod_id":"7a079e49-74b3-11e8-a887-0050569e2db9","labels":{"application":"checkin-api","deployment":"checkin-api-4","deploymentConfig":"checkin-api","deploymentconfig":"checkin-api"},"host":"sxpdk00013.delta.com","master_url":"https://172.30.0.1:443/api","namespace_id":"1cc9846b-65bc-11e8-a887-0050569e2db9"}}'
      ;; 
   esac
done
