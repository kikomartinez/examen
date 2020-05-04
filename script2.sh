read -p "Introduce la primera ciudad: " ciudad1
read -p "Introduce la segunda ciudad: " ciudad2

maxlineas=`cat instructores.txt | wc -l`
echo $maxlineas