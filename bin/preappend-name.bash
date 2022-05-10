PREFIX=$1

if [ -z $PREFIX ] || [ $1 = "--help" ]; then
  echo "Usage: preappend-name.bash [prefix]"
  exit
fi

for file in *; do
  echo mv $file $PREFIX$file
  # mv $file $PREFIX$file
done

