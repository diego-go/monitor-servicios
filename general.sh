#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Información General"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Información del host $(hostname -s)</p></h1>"
echo ""

# En esta parte, el script nos arrojará la información sobre la memoria del sistema
echo "<h2>Información de la Memoria</h2>"
echo "<pre> $(free -m) </pre>"

# Información general del disco duro y particiones del servidor
echo "<h2>Información de disco duro y particiones</h2>"
echo "<pre> $(df -h) </pre>"

#Esta parte nos indica el tiempo que lleva arriba nuestro servidor
echo "<h2>Tiempo de Actividad del Servidor</h2>"
echo "<pre> $(uptime) </pre>"

#Peticiones 
echo "<h2>Peticiones Servidor Apache</h2>"
echo "<pre> $(cat /var/log/access_log) </pre>"

echo "<h2>Logged Users</h2>"
echo "<pre> $(w) </pre>"

echo "<h2>System Version</h2>"
echo "<pre> $(cat /etc/redhat-release) </pre>"

echo "<br>"
#echo "<center><B><u>Information generated $(date)</u></B></center>"
echo "<center><B><p class="bg-primary">Information generated $(date)</p></B></center>"
echo "</body></html>"

echo "<center><input type='button' value='Go Back!' onclick='history.back()'></input></center>"
