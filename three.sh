#!/bin/bash

echo "Enter the three numbers:"
read a
read b
read c

if test $a -gt $b; then
    if test $a -gt $c; then
        echo "a is the largest"
    fi
fi

if test $b -gt $a; then
    if test $b -gt $c; then
        echo "b is the largest"
    fi
fi

if test $c -gt $b; then
    if test $c -gt $a; then
        echo "c is the largest"
    fi
fi

