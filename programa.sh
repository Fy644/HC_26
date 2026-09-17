#!/bin/bash

echo "Este programa hace lo siguiente:"
echo "El primer argumento define la palabra a buscar en los archivos de la carpeta o trayectoria a seleccionar." 
echo "El segundo argumento define la carpeta o trayectoria a analizar. Si el usuario no escribe una trayectoria, se busca en todo el sistema de almacenamiento la palabra definida por el usuario"

palabra="$1"
trayectoria="$2"

if [ -z "$palabra" ]; then
    echo "Error: No se ha proporcionado una palabra"
    exit 1
fi

if [ -z "$trayectoria" ]; then
    echo "Error: No se ha proporcionado una trayectoria"
    exit 1
fi

for numero in {1..8}; do
    archivo="$trayectoria/texto${numero}.txt"

    if [ ! -f "$archivo" ]; then
        echo "Advertencia: No existe $archivo"
        continue
    fi

    grep -nH -- "$palabra" "$archivo"
done

