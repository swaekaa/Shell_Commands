#!/bin/bash

echo "Parent Process - PID: $$"

(
    echo "Child Process - PID: $$ executing 'ls -l' command:"
    exec ls -l  # 'exec' replaces the child shell with 'ls -l'
)

echo "This will not be printed if exec works properly"

