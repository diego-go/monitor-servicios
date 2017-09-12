#!/bin/bash

echo "Content-type: text/html"
echo ""
echo "<html><head><title>SSH information"
echo "</title></head><body>"

echo "<h1 align="center">Information for host $(hostname -s)</h1>"
echo ""

echo "<h2>SSH Service Status</h2>"
echo "<pre>$(systemctl status sshd | head -3)</pre>"

echo "<center>Information generated $(date)</center>"
echo "</body></html>"

echo "<input type='button' value='Go Back!' onclick='history.back()'></input>"
