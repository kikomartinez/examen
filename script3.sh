read -p "numero " num

while [ $num -ge 5 ]; do
    num=$((num-5))
done

if [ $num -eq 0 ]; then
    echo "divisible por 5"
fi