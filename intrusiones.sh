#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Intrusions"
echo "</title></head><body>"

echo  "<meta name="viewport" content="width=device-width, initial-scale=1">"
echo  "<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">"
echo  "<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>"
echo  "<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>"

echo "<h1 align="center"><p class="bg-danger">Information for host $(hostname -s)</p></h1>"

echo ""

echo "<h2>Failed login attempts</h2>"
echo "<pre>$(cat logins.txt)</pre>"

echo "<br>"
echo "<center><B><p class="bg-primary">Information generated $(date)</p></B></center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
