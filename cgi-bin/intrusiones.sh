#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Intentos de Login"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Información actual del host $(hostname -s)</p></h1>"

echo ""
# Este binario lo que hace es tomar el archivo generado por cron que se actualiza cada segundo para monitorear los intentos
# fallidos de login al servidor
echo "<h2>Intentos Fallidos de Autenticación</h2>"
echo "<pre>$(cat logins.txt)</pre>"

echo "<br>"
echo "<center><B><p class="bg-primary">Información generada: $(date)</p></B></center>"
echo "</body></html>"

echo "<center><button type='button' onclick='history.back()' class='btn btn-success'>Ir atrás</button></center>"
echo "<br>"
