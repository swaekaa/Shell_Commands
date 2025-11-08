echo "Enter the directory path:"
read dir

if [ -d "$dir" ]  # Check if the path is a valid directory
then
  i=1
  for f in $(ls "$dir")  # Use $(...) instead of backticks for modern syntax
  do
    echo "$i. $f"
    i=$((i + 1))  # Increment counter using modern arithmetic syntax
  done
else
  echo "Not a valid directory path"
fi

