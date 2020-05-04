read -p "Introduce el directorio: " directorio
directorioactual=`pwd`
cd $directorio
numero=` ls | wc -l`
echo "En este directorio hay $numero de ficheros y directorios"
cd $directorioactual