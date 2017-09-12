#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>Intrusions"
echo "</title></head><body>"

echo "<h1 align="center">Information for host $(hostname -s)</h1>"
echo ""

echo "<h2>Failed login attempts</h2>"
echo "<pre>$(cat logins.txt)</pre>"

echo "<center>Information generated $(date)</center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
