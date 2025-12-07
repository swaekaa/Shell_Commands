#!/bin/bash

echo "Enter the three variables:"
read a
read b
read c

# Calculate the sum of the variables
d=$(expr $a + $b + $c)
echo "The result is $d"

# Calculate the average
e=$(expr $d / 3)
echo "The avg is $e"

