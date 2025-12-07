#!/bin/bash

echo "Enter the four numbers:"
read a
read b
read c
read d

# Check if 'a' is the largest
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ]; then
    echo "a is largest"
fi

# Check if 'b' is the largest
if [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ]; then
    echo "b is largest"
fi

# Check if 'c' is the largest
if [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ]; then
    echo "c is largest"
fi

# Check if 'd' is the largest
if [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ]; then
    echo "d is largest"
fi

