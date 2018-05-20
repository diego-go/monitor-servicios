#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Información General"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Información actual del host $(hostname -s)</p></h1>"
echo ""

#Muestra la información general de la memoria disponible en el servidor
echo "<h2>Información de la Memoria</h2>"
echo "<pre> $(free -m) </pre>"

# Información de discos y particiones
echo "<h2>Discos y Particiones</h2>"
echo "<pre> $(df -h) </pre>"

# Informacion de cuanto tiempo lleva arriba el server
echo "<h2>Tiempo de Actividad</h2>"
echo "<pre> $(uptime) </pre>"

# Peticiones hechas al servidor web
echo "<h2>Peticiones al Servidor</h2>"
echo "<pre> $(cat apache_log.txt) </pre>"

# Usuarios loggeados al sistema
echo "<h2>Usuarios Logeados</h2>"
echo "<pre> $(w) </pre>"

# Version del sistema
echo "<h2>Versión del Sistema</h2>"
echo "<pre> $(cat /etc/redhat-release) </pre>"

echo "<br>"
echo "<center><B><p class="bg-primary">Información generada: $(date)</p></B></center>"
echo "</body></html>"

echo "<center><button type='button' onclick='history.back()' class='btn btn-success'>Ir atrás</button></center>"
echo "<br>"
