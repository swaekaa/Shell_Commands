echo "Enter the number:"
read num
sum=0

while [ $num -gt 0 ]
do
  digit=$((num % 10))  # Get the last digit
  sum=$((sum + digit)) # Add the digit to the sum
  num=$((num / 10))    # Remove the last digit
done

echo "The sum of the digits is: $sum"

