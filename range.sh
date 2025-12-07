read -p "Enter range (start end): " start end
echo "Prime numbers between $start and $end:"
for ((num=start; num<=end; num++)); do
  if [ $num -lt 2 ]; then continue; fi
  is_prime=1
  for ((i=2; i*i<=num; i++)); do
    if ((num % i == 0)); then is_prime=0; break; fi
  done
  if ((is_prime == 1)); then echo $num; fi
done
