read -p "numero " num

fin="false"

while [ $fin = "false" ]; do
    for i in 4 3 2 1 0; do
	num=$(($num-1))
    done

    if [ $num -le 0 ]; then
	fin="true"
    fi
done


echo "num vale $num"

if [ $num -eq 0 ]; then
    echo "es divisible por 5"
fi