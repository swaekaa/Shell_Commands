#!/bin/bash

echo "Parent Process - PID: $$"

for i in {1..5}
do
    (
        echo "Child Process - PID: $$, PPID: $PPID"
    ) &
done

wait  # Ensure all child processes finish

