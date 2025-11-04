#!/bin/bash

echo "Parent Process - PID: $$ is terminating"

(
    sleep 5
    echo "Orphan Process - PID: $$, Adopted by PPID: $(ps -o ppid= -p $$)"
) &

exit  # Parent exits immediately

