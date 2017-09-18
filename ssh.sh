#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>SSH information"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

#echo "<h1 align="center">Information for host $(hostname -s)</h1>"
echo "<h1 align="center"><p class="bg-danger">Information for host $(hostname -s)</p></h1>"
echo ""

echo "<h2>SSH Service Status</h2>"
echo "<pre>$(systemctl status sshd | head -3)</pre>"

echo "<center><B><p class="bg-primary">Information generated $(date)</p></B></center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
