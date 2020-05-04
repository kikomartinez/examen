read -p "Introduce la primera ciudad: " ciudad1
read -p "Introduce la segunda ciudad: " ciudad2
ciudad1instructores=0
ciudad2instructores=0

maxlineas=`cat instructores.txt | wc -l`
contador=1

while [ $contador -le $maxlineas ]; do
    linea=`cat instructores.txt | head -${contador} | tail -1`
    ciudad=`echo $linea | awk '{print $4}'`
    if [ $ciudad = $ciudad1 ]; then
	ciudad1instructores=$((ciudad1instructores+1))
    else if [ $ciudad = $ciudad2 ]; then
	ciudad2instructores=$((ciudadinstructores+1))
    fi
    fi

    contador=$((contador+1))
done

if [ $ciudad1instructores -gt $ciudad2instructores ]; then
    echo "$ciudad1 tiene más instructores que $ciudad2"
else if [ $ciudad2instructores -gt $ciudad1instructores ]; then
    echo "$ciudad2 tiene más instructores que $ciudad1"
else 
    echo "$ciudad1 y $ciudad2 tienen el mismo número de instructores"
fi
fi
