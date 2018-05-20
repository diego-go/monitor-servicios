#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Información Docker"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Information actual del host $(hostname -s)</p></h1>"
echo ""

echo "<h2>Estado del servicio de contenedores Docker</h2>"
echo "<pre>$(systemctl status docker | head -3) $(cat statusDOCKER.txt)</pre>"

# Contenedores corriendo
echo "<h2>Contenedores corriendo</h2>"
echo "<pre>$(docker ps)</pre>"
echo "<br>"

echo "<center><B><p class="bg-primary">Información generada: $(date)</p></B></center>"
echo "</body></html>"

#echo "<input type='button' value='Ir atrás' onclick='history.back()'></input>"
echo "<center><button type='button' onclick='history.back()' class='btn btn-success'>Ir atrás</button></center>"
