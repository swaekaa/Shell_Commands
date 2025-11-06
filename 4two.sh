#!/bin/bash

# Create a child process
(
    echo "Child Process - PID: $$, PPID: $PPID"
) &

# Parent process
echo "Parent Process - PID: $$"

# Wait for child process to finish
wait

