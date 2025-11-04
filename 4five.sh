#!/bin/bash

pid=$$

(
    echo "Child Process - PID: $$ is terminating"
    exit 0  # Child exits, becoming a zombie
) &

echo "Parent Process - PID: $$"
sleep 10  # Parent sleeps, keeping child as a zombie

ps -elf | grep defunct  # Check for zombie process

