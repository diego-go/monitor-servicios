#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Postgres Information"
echo "</title></head><body>"

echo "<h1 align="center">Information for host $(hostname -s)</h1>"
echo ""

echo "<h2>Postgres Service Status</h2>"
echo "<pre>$(systemctl status postgresql | head -3)</pre>"

echo "<center>Information generated: $(date)</center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
