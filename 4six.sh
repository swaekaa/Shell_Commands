#!/bin/bash

echo "Root Process - PID: $$"

for i in {1..4}; do
    (
        echo "Child $i - PID: $$, PPID: $PPID"
        sleep 10
    ) &
done

wait  # Wait for all child processes to complete

