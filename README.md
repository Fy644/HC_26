# HC_26 — Búsqueda de palabras en textos

Proyecto del curso **Semana Tec: Herramientas computacionales: el arte de la programación (Gpo 101)**

El programa `programa.sh` busca una palabra en los archivos `texto1.txt` … `texto8.txt` de una carpeta y muestra las coincidencias.

## Requisitos

- Git Bash, WSL o cualquier terminal con Bash y `grep`
- En Windows, abre Git Bash en la carpeta del repositorio

## Estructura

```text
HC_26/
├── programa.sh      # Script de búsqueda
├── README.md
└── Textos/
    ├── texto1.txt
    ├── texto2.txt
    ├── …
    └── texto8.txt
```

## Uso

```bash
bash programa.sh <palabra> <carpeta>
```

La salida es el formato de `grep -nH`: archivo, número de línea y contenido de cada coincidencia.

Si falta la palabra o la carpeta, el script termina con un error. Si alguno de los archivos `texto1.txt`–`texto8.txt` no existe en esa carpeta, muestra una advertencia y continúa con el resto.
