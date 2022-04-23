#!/bin/bash

sleep 10 &
PID=$!
sleep 1 &
PID1=$!

wait $PID
echo "First RIP."
wait $PID1
echo "Second RIP."