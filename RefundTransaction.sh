#!/bin/bash
# USAGE:  ./RefundTransaction.sh
while true; do
  read -r lineA <&3
  if [ -z "$lineA" ]; then
    break
  fi

USER=""
PWD=""
SIGNATURE=""
SUBJECT=""

curl --request POST 'https://api-3t.paypal.com/nvp' \
--data "USER=$USER&PWD=$PWD&SIGNATURE=$SIGNATURE&VERSION=84.0&METHOD=RefundTransaction&TRANSACTIONID=$lineA&REFUNDTYPE=Full&SUBJECT=$SUBJECT" -w "\n" >> output.txt
sleep 1

done 3<transactionid.txt
