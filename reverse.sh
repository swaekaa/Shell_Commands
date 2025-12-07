echo "Enter the number"
read a
P=0
while [ $a -gt 0 ]
do
  d=`expr $a % 10`
  P=`expr $P \* 10 + $d`
  a=`expr $a / 10`
done
echo "The reverse is $P"

