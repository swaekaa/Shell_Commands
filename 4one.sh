#!/bin/bash

# Parent process
echo "Hello from parent in parent process"

# Child process using subshell
(
    echo "Hello from child in child process"
) &
wait  # Wait for the child process to complete

