#!/bin/bash

echo "Enter the number:"
read a
n=$a
p=0

# While loop to process each digit of the number
while [ $a -gt 0 ]
do
    d=$(expr $a % 10)          # Extract the last digit
    p=$(expr $p + $d \* $d \* $d)  # Add cube of the digit to p
    a=$(expr $a / 10)          # Remove the last digit
done

# Check if the sum of cubes equals the original number
if [ $p -eq $n ]; then
    echo "The number is Armstrong"
else
    echo "The number is not Armstrong"
fi

